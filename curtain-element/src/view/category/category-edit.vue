<template>
  <el-dialog :append-to-body="true" :before-close="handleClose" :visible.sync="visible">
    <div style="margin-top:-25px;">
      <div class="dialog-title">
        <span>{{ categoryEditTitle }}</span>
      </div>
      <el-form :model="form" status-icon ref="categoryEditForm" label-width="100px" @submit.native.prevent>
        <el-form-item label="名称" prop="name" :rules="rules.Null">
          <el-input size="medium" v-model="form.name" placeholder="请填写分类名" :readonly="!hasAuth"></el-input>
        </el-form-item>
        <el-form-item label="排序" prop="sort" :rules="rules.InterNum">
          <el-input size="medium" v-model="form.sort" placeholder="请填写分类排序" :readonly="!hasAuth"></el-input>
        </el-form-item>
        <el-form-item label="显示上线" prop="online">
          <el-switch
            v-model="display"
            active-color="#13ce66"
            inactive-color="#ff4949"
            active-text="上线"
            inactive-text="下线"
            :disabled="!hasAuth"
          ></el-switch>
        </el-form-item>
        <el-form-item label="图片" prop="img" :rules="rules.Null">
          <upload-imgs ref="uploadEle" :max-num="maxNum" :value="initData" :disabled="!hasAuth"/>
        </el-form-item>
        <el-form-item label="描述" prop="description" :rules="rules.Null">
          <el-input size="medium" v-model="form.description" type="textarea" :rows="1" placeholder="请填写描述" :readonly="!hasAuth">
          </el-input>
        </el-form-item>
      </el-form>
    </div>
    <div slot="footer" class="dialog-footer" style="padding-left:5px;">
      <el-button type="primary" @click="submitForm('categoryEditForm')" v-permission="{ permission: '更新分类' }"
        >确 定</el-button
      >
      <el-button @click="resetForm('categoryEditForm')" v-permission="{ permission: '更新分类' }">重 置</el-button>
    </div>
  </el-dialog>
</template>
<script>
import Category from '@/model/category'
import UploadImgs from '@/component/base/upload-image'
import Auth from '@/core/util/auth'
import rules from '@/core/util/rules-1.0'

export default {
  components: {
    UploadImgs,
  },
  props: {
    dialogFormVisible: {
      type: Boolean,
      default: false,
    },
    isCreate: {
      type: Boolean,
      default: false,
    },
    categoryId: {
      type: Number,
      default: 0,
    },
    isSub: {
      type: Boolean,
      default: false,
    },
  },
  computed: {
    visible: {
      get() {
        return this.dialogFormVisible
      },
      set() {},
    },
    categoryEditTitle() {
      if (!this.hasAuth) {
        return '分类详情'
      }

      return this.isCreate ? '创建分类' : '更新分类'
    },
  },
  data() {
    return {
      hasAuth: Auth.hasAuth(['更新分类', '创建分类']),
      display: true,
      initData: [],
      maxNum: 1,
      form: {
        name: '',
        is_root: 0,
        parent_id: null,
        description: '',
        online: 1,
        sort: null,
        img: '',
      },
      rules: {
        ...rules
      }
    }
  },
  watch: {
    display(val) {
      this.form.online = val ? 1 : 0
    },
  },
  async mounted() {
    if (!this.isCreate) {
      const res = await Category.getCategory(this.categoryId)
      this.form = res
      this.display = res.online === 1
      this.initData = [{ display: res.img }]
    }
    if (this.isSub) {
      this.form.parent_id = this.$route.params.id
      this.form.is_root = 0
    } else {
      this.form.parent_id = null
      this.form.is_root = 1
    }
  },
  methods: {
    async submitForm(formName) {
      await this.getValue()
      this.$refs[formName].validate(async valid => {
        if (valid) {
          const form = { ...this.form }
          let res
          if (this.isCreate) {
            res = await Category.addCategory(form)
          } else {
            res = await Category.editCategory(this.categoryId, form)
          }
          if (res.code < window.MAX_SUCCESS_CODE) {
            this.$message.success(`${res.message}`)
            this.$emit('dialogClose')
          }
        }
      })
    },
    async getValue() {
      const val = await this.$refs.uploadEle.getValue()
      if (val && val.length > 0) {
        this.form.img = val[0].display
      }
    },
    resetForm(formName) {
      this.$refs[formName].resetFields()
    },
    handleClose(done) {
      done()
      this.$emit('dialogClose')
    },
  },
}
</script>
<style lang="scss" scoped>
.dialog-title {
  color: $parent-title-color;
  font-size: 16px;
  margin-bottom: 20px;
}
</style>

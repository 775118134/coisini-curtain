<template>
  <div>
    <div class="container" v-if="!showEdit">
      <div class="header">
        <div class="title">活动列表</div>
        <el-button style="margin-left:30px;" @click.prevent="addActivity" type="primary" plain size="medium"
                   v-permission="{ permission: ['创建活动'] }"
          >添加活动</el-button
        >
      </div>

      <el-table stripe v-loading="loading" :data="tableData">
        <el-table-column prop="id" label="id" width="100"></el-table-column>
        <el-table-column prop="entrance_img" label="入口图" width="200">
          <template v-if="scope.row.entrance_img" slot-scope="scope">
            <img class="display_img" :src="scope.row.entrance_img" :alt="scope.row.entrance_img" />
          </template>
        </el-table-column>
        <el-table-column :show-overflow-tooltip="true" prop="title" label="标题" width="150"></el-table-column>
        <el-table-column prop="name" label="名称" width="150"></el-table-column>
        <el-table-column :show-overflow-tooltip="true" prop="remark" label="提示信息" width="200"></el-table-column>
        <el-table-column prop="internal_top_img" label="顶部图" width="200">
          <template v-if="scope.row.internal_top_img" slot-scope="scope">
            <img class="display_img" :src="scope.row.internal_top_img" :alt="scope.row.internal_top_img" />
          </template>
        </el-table-column>

        <el-table-column prop="online" label="状态" width="150">
          <template slot-scope="scope">{{ scope.row.online | onlineFormat }}</template>
        </el-table-column>

        <el-table-column prop="start_time" label="开始时间" width="200">
          <template slot-scope="scope">{{ scope.row.start_time | dateFormat }}</template>
        </el-table-column>
        <el-table-column prop="end_time" label="结束时间" width="200">
          <template slot-scope="scope">{{ scope.row.end_time | dateFormat }}</template>
        </el-table-column>
        <el-table-column
          :show-overflow-tooltip="true"
          min-width="300"
          prop="description"
          label="描述"
        ></el-table-column>
        <el-table-column fixed="right" :width="columnWith" label="操作" align="center">
          <template slot-scope="scope">
            <el-button @click.prevent="handleEdit(scope.row)" type="primary" plain size="mini">详情</el-button>
            <el-button
              v-permission="{ permission: ['删除活动'] }"
              @click.prevent="handleDelete(scope.row)"
              type="danger"
              size="mini"
              plain
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>

      <div class="pagination">
        <el-pagination
          @current-change="handleCurrentChange"
          :background="true"
          :page-size="pageCount"
          :current-page="currentPage"
          v-if="refreshPagination"
          layout="prev, pager, next, jumper"
          :total="totalNums"
        ></el-pagination>
      </div>
    </div>
    <activity-edit v-else @editClose="editClose" :activityId="activityId" :isCreate="isCreate"></activity-edit>
  </div>
</template>

<script>
import dayjs from 'dayjs'
import Activity from '@/model/activity'
import Auth from '@/core/util/auth'
import ActivityEdit from './activity-edit'

export default {
  components: { ActivityEdit },
  computed: {
    columnWith() {
      console.log(Auth)
      return Auth.hasAuth(['删除活动']) ? 150 : 90
    }
  },
  data() {
    return {
      loading: false,
      activityId: null,
      isCreate: false,
      tableData: [],
      showEdit: false,
      totalNums: 0,
      currentPage: 1,
      pageCount: 10,
      refreshPagination: true,
    }
  },
  async created() {
    this.loading = true
    await this.getActivities()
    this.loading = false
  },
  methods: {
    async getActivities() {
      const page = this.currentPage - 1
      const count = this.pageCount
      const activities = await Activity.getActivities(page, count)
      this.tableData = activities.items
      this.totalNums = activities.total
    },
    async handleCurrentChange(val) {
      this.currentPage = val
      this.loading = true
      await this.getActivities()
      this.loading = false
    },
    handleEdit(val) {
      this.isCreate = false
      this.activityId = `${val.id}`
      this.showEdit = true
    },
    handleDelete(val) {
      this.$confirm('此操作将永久删除该项, 是否继续?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning',
      }).then(async () => {
        const res = await Activity.deleteActivity(val.id)
        if (res.code < window.MAX_SUCCESS_CODE) {
          await this.getActivities()
          this.$message({
            type: 'success',
            message: `${res.message}`,
          })
        }
      })
    },
    addActivity(templateData) {
      this.templateData = templateData
      this.isCreate = true
      this.activityId = null
      this.showEdit = true
    },
    editClose() {
      this.showEdit = false
      this.getActivities()
    },
  },
  filters: {
    dateFormat(val) {
      return dayjs(val).format('YYYY-MM-DD HH:mm:ss')
    },
    onlineFormat(val) {
      switch (val) {
        case 0:
          return '下线'
        case 1:
          return '上线'
        default:
          return val
      }
    },
  },
}
</script>

<style lang="scss" scoped>
.container {
  padding: 0 30px;

  .header {
    display: flex;
    // justify-content: space-between;
    align-items: center;

    .title {
      height: 59px;
      line-height: 59px;
      color: $parent-title-color;
      font-size: 16px;
      font-weight: 500;
    }
  }

  .pagination {
    display: flex;
    justify-content: flex-end;
    margin: 20px;
  }
}

.display_img {
  max-width: 100px;
  max-height: 50px;
  width: auto;
  height: auto;
}
</style>

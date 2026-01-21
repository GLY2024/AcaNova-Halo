# 成员学术主页使用指南 / Member Academic Homepage Guide

## 📚 概述 / Overview

本主题现已支持多成员学术主页功能，每个成员可以独立创建和维护自己的学术主页，无需修改主题配置。

This theme now supports multiple member academic homepages. Each member can independently create and maintain their own academic homepage without modifying theme settings.

---

## 🎯 支持的成员类型 / Supported Member Types

1. **教师/教授** (Teacher/Faculty) - 展示教学和科研成果
2. **博士后** (Postdoc) - 展示研究经历和成果
3. **博士生** (PhD Student) - 展示学习经历和导师信息
4. **硕士生** (Master Student) - 展示学习经历和导师信息
5. **已毕业（仍在科研）** (Alumni - Research) - 展示当前科研工作
6. **已毕业（已离开科研）** (Alumni - Career) - 展示职业发展

---

## 🚀 快速开始 / Quick Start

### 步骤 1: 创建成员页面 / Step 1: Create Member Page

1. 登录 Halo 后台
2. 进入「页面」→「新建页面」
3. 在「模板」下拉菜单中选择「成员学术主页 / Member Academic」
4. 填写页面标题（建议使用成员姓名）

### 步骤 2: 配置成员信息 / Step 2: Configure Member Info

在页面右侧的「自定义字段」中填写：

#### 基本信息 (必填)
- **成员类型**: 选择成员的身份类型
- **姓名（中文）**: 必填
- **姓名（英文）**: 可选
- **职位/身份**: 例如 "助理教授" 或 "博士生"
- **个人照片**: 上传头像（推荐 400x400px）
- **电子邮件**: 联系邮箱
- **办公室地址**: 可选

#### 学术信息
- **研究领域**: 例如 "人工智能、计算机视觉"
- **研究兴趣**: 可添加多个兴趣方向
- **导师姓名**: 仅学生需要填写
- **导师主页链接**: 可选

#### 教育背景
添加教育经历，包括：
- 学位
- 大学
- 时间段
- 专业/方向

#### 工作经历（已毕业成员）
添加工作经历，包括：
- 职位
- 公司/机构
- 时间段
- 工作描述

#### 社交链接
- Google Scholar
- GitHub
- 个人网站
- LinkedIn
- ORCID

#### 状态信息
- **是否招收学生**: 仅教师和博士后
- **招生信息**: 具体招生要求
- **预计毕业时间**: 仅在读学生

### 步骤 3: 编写页面内容 / Step 3: Write Content

在主编辑区域使用 Markdown 或富文本编辑器编写：

- 个人简介
- 研究成果
- 项目经历
- 发表论文
- 获奖荣誉
- 其他信息

**提示**: 可以使用 Markdown 格式来组织内容，支持标题、列表、链接、图片等。

### 步骤 4: 发布页面 / Step 4: Publish

点击「发布」按钮，页面将立即生效。

---

## 📋 不同类型成员的展示差异 / Display Differences by Member Type

### 教师/教授 (Teacher)
- 显示蓝色徽章
- 可展示招生信息
- 突出显示研究方向和成果

### 博士后 (Postdoc)
- 显示紫色徽章
- 可展示招生信息
- 展示博士后研究经历

### 博士生/硕士生 (PhD/Master Student)
- 显示绿色/黄色徽章
- **自动显示导师信息**（如果填写）
- **显示预计毕业时间**（如果填写）
- 突出显示学习经历

### 已毕业（仍在科研）(Alumni - Research)
- 显示靛蓝色徽章
- 展示当前科研职位
- 展示教育和工作经历

### 已毕业（已离开科研）(Alumni - Career)
- 显示灰色徽章
- 重点展示职业发展
- 展示工作经历而非科研成果

---

## 🎨 页面定制 / Page Customization

### 页面 URL 设置

建议使用规范的 URL 格式：
- `/members/zhangsan` - 教师
- `/members/lisi` - 学生
- `/alumni/wangwu` - 已毕业成员

### 内容组织建议

#### 教师/博士后
```markdown
## 研究兴趣 / Research Interests
简要介绍研究方向...

## 代表性论文 / Selected Publications
1. Paper 1...
2. Paper 2...

## 主持项目 / Research Projects
- 项目 1...
- 项目 2...

## 招生信息 / Recruiting
欢迎对XX方向感兴趣的学生加入...
```

#### 学生
```markdown
## 关于我 / About Me
简要自我介绍...

## 研究方向 / Research
目前研究内容...

## 发表论文 / Publications
论文列表...

## 学术活动 / Activities
参加的会议、讲座等...
```

#### 已毕业成员
```markdown
## 个人简介 / Biography
简要介绍当前工作...

## 研究生期间工作 / Graduate Work
研究生期间的主要工作和成果...

## 当前工作 / Current Position
当前的工作职责和项目...
```

---

## 📱 成员列表页面 / Members List Page

创建一个「成员列表」页面来展示所有成员：

1. 创建新页面
2. 选择「成员列表」模板
3. 页面会自动显示所有使用「成员学术主页」模板的页面
4. 支持按类型筛选（教师、学生、校友等）

---

## 🔧 高级功能 / Advanced Features

### 自定义样式

如需自定义成员页面样式，可编辑 `templates/page_member.ftl` 文件。

### 批量导入

如有大量成员需要导入，可考虑：
1. 使用 Halo API 批量创建页面
2. 准备 JSON 格式的成员数据
3. 使用脚本自动导入

### SEO 优化

每个成员页面自动包含：
- 页面标题（成员姓名）
- Meta 描述
- 结构化数据（可扩展）

---

## 💡 最佳实践 / Best Practices

1. **统一命名规范**: 使用一致的 URL 命名方式
2. **定期更新**: 鼓励成员定期更新自己的页面
3. **照片质量**: 使用高质量的个人照片
4. **内容完整性**: 确保必填信息完整
5. **链接有效性**: 定期检查外部链接是否有效

---

## 🆘 常见问题 / FAQ

### Q: 成员页面和主题首页的关系？
A: 成员页面是独立的，不影响主题首页。主题首页显示整站配置，成员页面显示个人信息。

### Q: 可以有多少个成员页面？
A: 无限制，可以创建任意数量的成员页面。

### Q: 成员可以自己编辑页面吗？
A: 是的，可以为每个成员分配 Halo 账号和相应权限，让他们自己维护页面。

### Q: 如何控制页面访问权限？
A: 在页面设置中可以设置为「公开」或「私密」，也可以设置密码保护。

### Q: 如何在导航菜单中添加成员列表？
A: 在 Halo 后台的「导航菜单」中添加链接到成员列表页面。

### Q: 成员离开后如何处理页面？
A: 可以将成员类型改为「已毕业」，或者设置页面为「归档」状态。

---

## 📞 获取帮助 / Get Help

如有问题，请：
1. 查看 [完整文档](README_CN.md)
2. 访问 [GitHub Issues](https://github.com/GLY2024/AcaNova-Halo/issues)
3. 加入 Halo 官方社区讨论

---

<div align="center">
  <p>Made with ❤️ for Academic Community</p>
</div>

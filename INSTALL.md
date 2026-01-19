# AcaNova-Halo 安装指南 / Installation Guide

[English](#english) | [简体中文](#chinese)

---

<a name="chinese"></a>
## 简体中文

### 📋 前提条件

- Halo 版本 >= 2.10.0
- 已完成 Halo 的基础安装和配置

### 🚀 安装方法

#### 方法一：从 Halo 应用市场安装（推荐）

> 注意：主题需要先发布到 Halo 应用市场才能使用此方法

1. 登录 Halo 后台管理界面
2. 点击左侧菜单「外观」→「主题」
3. 点击「安装」按钮
4. 在应用市场中搜索 "AcaNova"
5. 找到「AcaNova Academic」主题
6. 点击「安装」按钮
7. 等待安装完成
8. 点击「启用」按钮

#### 方法二：手动从 GitHub 安装

1. **下载主题**
   
   从 GitHub 下载最新版本：
   ```bash
   cd /path/to/halo/workdir/themes
   git clone https://github.com/GLY2024/AcaNova-Halo.git acanova-halo
   ```
   
   或者下载 ZIP 文件：
   - 访问 https://github.com/GLY2024/AcaNova-Halo
   - 点击「Code」→「Download ZIP」
   - 解压到 Halo 的 `workdir/themes/` 目录下
   - 重命名文件夹为 `acanova-halo`

2. **重启 Halo**
   
   ```bash
   # 如果使用 Docker
   docker restart halo
   
   # 如果使用 systemd
   systemctl restart halo
   ```

3. **启用主题**
   
   - 登录 Halo 后台
   - 点击左侧菜单「外观」→「主题」
   - 找到「AcaNova Academic」主题
   - 点击「启用」

### ⚙️ 配置主题

1. **进入主题设置**
   
   在 Halo 后台：「外观」→「主题」→「AcaNova」→「主题设置」

2. **基本设置** ⭐ 必填

   - **网站标题**: 浏览器标签页显示的标题
   - **姓名**: 你的中英文姓名（例如：张三 | Zhang San）
   - **职位/角色**: 例如：博士研究生 / Ph.D. Candidate
   - **所属机构**: 你的大学或研究所名称
   - **电子邮件**: 你的联系邮箱
   - **个人照片**: 上传你的个人照片
     - 推荐尺寸：400x400 像素
     - 推荐格式：JPG 或 PNG
     - 建议使用正方形照片
   - **个人简介**: 介绍你的背景、教育和研究重点
   - **招生/合作信息**: 显示在简介下方的高亮提示

3. **研究方向** ⭐ 推荐填写

   - **研究愿景**: 你的研究目标和期望影响
   - **研究框架描述**: 描述你的研究方法
   - **研究兴趣列表**: 添加 3-5 个研究兴趣点
   - **具体研究方向**: 添加 2-4 个详细的研究方向
     - 为每个方向选择合适的图标
     - 图标列表：https://fontawesome.com/icons

4. **社交链接** 可选

   只需填写你拥有的社交平台链接：
   - CV/简历 PDF 链接
   - Google Scholar 主页
   - GitHub 账号
   - ResearchGate 主页
   - 个人博客
   - ORCID
   - LinkedIn

5. **联系方式** ⭐ 推荐填写

   - 办公室地址
   - 大学名称
   - 城市/国家

6. **学术服务** 可选

   添加你的学术服务经历：
   - 会议审稿人
   - 期刊编委
   - 教学助理
   - 其他学术服务

7. **教育背景** ⭐ 推荐填写

   按时间倒序添加教育经历：
   - 学位名称
   - 大学名称
   - 时间段
   - 研究方向或论文题目

8. **样式设置** 可选

   - **强调色**: 主题的主色调（默认：金色 #d4a562）
   - **显示设置**: 选择显示或隐藏新闻、荣誉板块
   - **数量设置**: 设置首页显示的新闻和荣誉数量

9. **保存设置**
   
   点击页面右上角的「保存」按钮

### 📝 添加内容

#### 发布新闻/动态

1. 点击左侧菜单「文章」→「写文章」
2. 填写标题（例如："获得国家奖学金"）
3. 编写正文内容
4. 选择分类（可选，用于组织内容）
5. 添加标签（可选）
6. 点击「发布」
7. 新闻会自动显示在主页的「News」板块

#### 添加论文/出版物

由于论文信息结构化程度高，建议通过 JSON 文件管理：

1. 找到文件：`themes/acanova-halo/templates/assets/data/publications.json`
2. 按照以下格式添加论文信息：

```json
{
  "title": "Your Paper Title: A Comprehensive Study",
  "authors": "Zhang San*, Li Si*, Wang Wu",
  "conference": "CVPR 2024 (CCF-A)",
  "year": "2024",
  "links": {
    "paper": "https://arxiv.org/abs/xxxx.xxxxx",
    "code": "https://github.com/username/project",
    "project": "https://project-website.com",
    "video": "https://youtube.com/watch?v=xxx"
  },
  "image": "/templates/assets/publications/paper-name/thumb.jpg",
  "note": "Oral Presentation"
}
```

3. 保存文件
4. 刷新网站查看更新

**字段说明**：
- `title`: 论文标题（必填）
- `authors`: 作者列表，用 `*` 标记通讯作者或共同一作（必填）
- `conference`: 会议/期刊名称，可包含 CCF 等级（必填）
- `year`: 发表年份（必填）
- `links`: 相关链接对象（可选）
  - `paper`: 论文 PDF 链接
  - `code`: 代码仓库
  - `project`: 项目主页
  - `video`: 视频演示
- `image`: 论文缩略图路径（可选）
- `note`: 特殊标记，如 "Oral", "Spotlight", "Best Paper" 等（可选）

#### 添加荣誉奖项

类似论文，编辑：`themes/acanova-halo/templates/assets/data/honors.json`

```json
{
  "title": "国家奖学金 / National Scholarship",
  "organization": "中国教育部 / Ministry of Education of China",
  "year": "2024",
  "description": "授予学业优异和科研突出的学生"
}
```

### 🎨 自定义样式

如需更深度的自定义：

1. **修改 CSS**
   
   编辑 `themes/acanova-halo/templates/assets/styles.css`
   
   ```css
   /* 添加自定义样式 */
   .custom-class {
       /* your styles */
   }
   ```

2. **更换图标**
   
   访问 https://fontawesome.com/icons 查找图标
   
   在主题设置中使用图标类名，例如：
   - `fa-brain`
   - `fa-project-diagram`
   - `fa-lightbulb`

3. **修改颜色**
   
   在主题设置的「样式设置」中修改强调色

### 🔄 更新主题

#### 从应用市场更新

1. 进入「外观」→「主题」
2. 找到 AcaNova 主题
3. 如有更新，点击「更新」按钮

#### 手动更新

```bash
cd /path/to/halo/workdir/themes/acanova-halo
git pull origin main
```

**重要**: 更新前请备份：
- `templates/assets/data/publications.json`
- `templates/assets/data/honors.json`
- 任何自定义的 CSS 文件

### 🐛 常见问题

#### Q1: 主题安装后不显示？

**A**: 
1. 检查 Halo 版本是否 >= 2.10.0
2. 尝试重启 Halo 服务
3. 查看 Halo 日志是否有错误信息

#### Q2: 上传的图片不显示？

**A**:
1. 确认图片格式为 JPG、PNG 或 WebP
2. 检查图片大小，建议不超过 2MB
3. 确认图片已成功上传到 Halo

#### Q3: 如何支持多个实验室成员？

**A**: 有三种方案：
1. **使用分类**: 为每个成员创建分类，内容按人员分类
2. **使用自定义页面**: 为每个成员创建独立的自定义页面
3. **多站点**: 在 Halo 中创建多个站点，每个成员一个站点

#### Q4: JSON 文件编辑后没有生效？

**A**:
1. 检查 JSON 格式是否正确（使用 JSONLint.com 验证）
2. 清除浏览器缓存
3. 在浏览器中强制刷新（Ctrl+F5 或 Cmd+Shift+R）

#### Q5: 如何隐藏某些板块？

**A**:
在主题设置的「样式设置」中：
- 将「显示新闻板块」设为「隐藏」
- 将「显示荣誉板块」设为「隐藏」

### 📧 获取帮助

如果遇到问题：

1. 查看 [中文文档](README_CN.md)
2. 访问 [GitHub Issues](https://github.com/GLY2024/AcaNova-Halo/issues)
3. 加入 Halo 官方社区寻求帮助

---

<a name="english"></a>
## English

### 📋 Requirements

- Halo >= 2.10.0
- Completed Halo installation and basic configuration

### 🚀 Installation

#### Method 1: Install from Halo Theme Store (Recommended)

> Note: Theme must be published to Halo theme store first

1. Log in to Halo admin panel
2. Navigate to "Appearance" → "Themes"
3. Click "Install" button
4. Search for "AcaNova" in the theme store
5. Find "AcaNova Academic" theme
6. Click "Install"
7. Wait for installation to complete
8. Click "Activate"

#### Method 2: Manual Installation from GitHub

1. **Download Theme**
   
   ```bash
   cd /path/to/halo/workdir/themes
   git clone https://github.com/GLY2024/AcaNova-Halo.git acanova-halo
   ```
   
   Or download ZIP:
   - Visit https://github.com/GLY2024/AcaNova-Halo
   - Click "Code" → "Download ZIP"
   - Extract to Halo's `workdir/themes/` directory
   - Rename folder to `acanova-halo`

2. **Restart Halo**
   
   ```bash
   # If using Docker
   docker restart halo
   
   # If using systemd
   systemctl restart halo
   ```

3. **Activate Theme**
   
   - Log in to Halo admin
   - Go to "Appearance" → "Themes"
   - Find "AcaNova Academic"
   - Click "Activate"

### ⚙️ Configuration

See Chinese section above for detailed configuration instructions.

### 📝 Content Management

#### Publishing News

1. Go to "Posts" → "Write Post"
2. Enter title and content
3. Publish - it will appear on homepage

#### Adding Publications

Edit `themes/acanova-halo/templates/assets/data/publications.json`:

```json
{
  "title": "Your Paper Title",
  "authors": "Author1*, Author2",
  "conference": "CVPR 2024 (CCF-A)",
  "year": "2024",
  "links": {
    "paper": "https://arxiv.org/abs/xxxx.xxxxx",
    "code": "https://github.com/user/repo"
  }
}
```

### 🔄 Updates

```bash
cd /path/to/halo/workdir/themes/acanova-halo
git pull origin main
```

**Important**: Backup before updating:
- `templates/assets/data/publications.json`
- `templates/assets/data/honors.json`

### 📧 Support

- Documentation: [README_CN.md](README_CN.md)
- Issues: [GitHub Issues](https://github.com/GLY2024/AcaNova-Halo/issues)
- Community: Join Halo official community

---

<div align="center">
  <p>Made with ❤️ for Academic Community</p>
</div>

# 快速开始指南 / Quick Start Guide

## 🇨🇳 中文

### 1. 安装主题

```bash
# 克隆仓库到 Halo 主题目录
cd /path/to/halo/workdir/themes
git clone https://github.com/GLY2024/AcaNova-Halo.git acanova-halo

# 重启 Halo
docker restart halo
# 或
systemctl restart halo
```

### 2. 启用主题

1. 登录 Halo 后台
2. 进入「外观」→「主题」
3. 找到「AcaNova Academic」
4. 点击「启用」

### 3. 基础配置（5 分钟）

进入「主题设置」，最少填写以下信息：

#### ✅ 必填
- 网站标题
- 姓名（中英文）
- 职位/角色
- 所属机构
- 电子邮件
- 个人照片（上传）
- 个人简介

#### 🌟 推荐填写
- 研究兴趣（3-5 个）
- 研究方向（2-4 个）
- 社交链接（Google Scholar, GitHub 等）
- 教育背景

### 4. 发布第一条新闻

1. 点击「文章」→「写文章」
2. 标题：例如 "欢迎访问我的学术主页"
3. 内容：简单介绍
4. 点击「发布」

### 5. 添加论文（可选）

编辑文件：`templates/assets/data/publications.json`

```json
[
  {
    "title": "你的论文标题",
    "authors": "作者1*, 作者2",
    "conference": "会议名 2024 (CCF-A)",
    "year": "2024",
    "links": {
      "paper": "https://arxiv.org/abs/xxxx"
    }
  }
]
```

### 6. 完成！🎉

访问你的网站查看效果。

---

## 🇬🇧 English

### 1. Install Theme

```bash
# Clone repository to Halo themes directory
cd /path/to/halo/workdir/themes
git clone https://github.com/GLY2024/AcaNova-Halo.git acanova-halo

# Restart Halo
docker restart halo
# or
systemctl restart halo
```

### 2. Activate Theme

1. Log in to Halo admin
2. Go to "Appearance" → "Themes"
3. Find "AcaNova Academic"
4. Click "Activate"

### 3. Basic Configuration (5 minutes)

Go to "Theme Settings" and fill in at minimum:

#### ✅ Required
- Site title
- Name (bilingual)
- Role/Position
- Organization
- Email
- Profile photo (upload)
- Biography

#### 🌟 Recommended
- Research interests (3-5 items)
- Research directions (2-4 items)
- Social links (Google Scholar, GitHub, etc.)
- Education background

### 4. Publish First News

1. Click "Posts" → "Write Post"
2. Title: e.g., "Welcome to My Academic Homepage"
3. Content: Brief introduction
4. Click "Publish"

### 5. Add Publications (Optional)

Edit file: `templates/assets/data/publications.json`

```json
[
  {
    "title": "Your Paper Title",
    "authors": "Author1*, Author2",
    "conference": "Conference 2024 (CCF-A)",
    "year": "2024",
    "links": {
      "paper": "https://arxiv.org/abs/xxxx"
    }
  }
]
```

### 6. Done! 🎉

Visit your website to see the results.

---

## 📚 更多文档 / More Documentation

- [完整安装指南 / Full Installation Guide](INSTALL.md)
- [中文文档 / Chinese Documentation](README_CN.md)
- [English Documentation](README.md)
- [更新日志 / Changelog](CHANGELOG.md)

## 🆘 需要帮助？ / Need Help?

- [提交 Issue / Submit Issue](https://github.com/GLY2024/AcaNova-Halo/issues)
- [查看文档 / View Documentation](README_CN.md)

---

<div align="center">
  Made with ❤️ for Academic Community
</div>

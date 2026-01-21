# AcaNova-Halo: Academic Homepage Theme for Halo

<div align="center">

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Halo](https://img.shields.io/badge/Halo-%3E%3D2.10.0-blue)

[English](#english) | [简体中文](README_CN.md)

</div>

---

## 🌌 Introduction

> ***AcaNova-Halo** represents a fusion of **"Academic"** rigor and the brilliance of a **"Nova"**. This elegant academic homepage theme is now fully integrated with Halo CMS for easy deployment and content management.*

**AcaNova-Halo** is a Halo theme designed for researchers, PhD students, and faculty members to create and maintain their academic homepages. It's perfect for research labs where each member can create and update their own academic homepage without manual server-side configuration.

### 🎯 Why AcaNova-Halo?

- ✅ **Easy Installation**: One-click install from Halo theme store
- ✅ **Visual Configuration**: All settings configurable via Halo admin panel
- ✅ **Multi-user Support**: Each user can create their own academic homepage
- ✅ **Dynamic Content**: News, publications, and honors managed through Halo
- ✅ **No Server Access Needed**: Users update content without touching the server
- ✅ **Responsive Design**: Perfect on desktop, tablet, and mobile devices

### 🎥 Preview

<div align="center">
  <img src="docs/example.gif" width="100%" alt="Preview GIF" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
  <br>
  <a href="https://github.com/yihangtao/AcaNova-X/blob/main/docs/example.mp4">
    <i>(Click here to watch/download the HD MP4 video / 点击此处查看高清视频)</i>
  </a>
</div>

---

## ✨ Key Features

### 1. Structured Profile & Research Vision
<img src="docs/part1.png" width="100%" alt="Profile and Thrust" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); margin-bottom: 20px;">

*   **Active Seeker Highlight**: Clearly signals your availability for collaborations or internships.
*   **Macro-to-Micro Vision**: The **Research Thrust** section guides visitors from your "Grand Vision" (Macro) to specific "Research Directions" (Micro).

### 2. Dynamic News with a Human Touch
<img src="docs/part2.png" width="100%" alt="News Section" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); margin-bottom: 20px;">

*   **Handwriting Style**: A distinct font choice for the News section differentiates "updates" from formal content.

### 3. Interactive & Visual Publications
<img src="docs/part3.png" width="100%" alt="Publications Section" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); margin-bottom: 20px;">

*   **Poster-Level Display**: The **"Image" button** expands entries to reveal posters or thumbnails directly in the list.
*   **Smart Highlighting**: Built-in badges for **Oral** and **Spotlight**, plus automatic **CCF Rank** integration (e.g., CCF-A).

### 4. Aesthetic Timeline & Professional Contact
<img src="docs/part4.png" width="100%" alt="Honors and Service" style="border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); margin-bottom: 20px;">

*   **Elegant Flow**: Services and Education presented in a clean, vertical timeline.
*   **Polished Contact Card**: A layout that balances professional accessibility with privacy.

---

## 🚀 Quick Start

### For Halo Users (Recommended)

1.  **Install Theme**:
    *   Log in to your Halo admin panel
    *   Navigate to "Appearance" → "Themes" → "Install"
    *   Search for "AcaNova" in the theme store
    *   Click "Install" and then "Activate"

2.  **Configure Settings**:
    *   Go to "Appearance" → "Themes" → "AcaNova" → "Settings"
    *   Fill in your personal information, research interests, and social links
    *   Upload your profile photo
    *   Customize colors and layout options

3.  **Add Content**:
    *   Create news posts in "Posts" section
    *   Manage publications via JSON file (see documentation)
    *   Update education and service information in theme settings

### For Static Site Users

1.  **Clone/Copy**: Copy the repository to your web server or GitHub Pages.
2.  **Personalize**: Edit `index.html` to update your information.
3.  **Update Data**: Modify JSON files in `data/` folder.

For detailed instructions in Chinese, see [README_CN.md](README_CN.md).

---

## 🏢 Perfect for Research Labs

This theme is ideal for research labs where:

- Multiple members need their own academic homepages
- Members want to update their content independently
- No direct server access is available
- Unified style across all lab members is desired

**Example Use Cases:**

- University research groups
- Laboratory internal websites
- Academic department staff pages
- Graduate student showcase platforms

---

## 📦 Theme Structure

```
AcaNova-Halo/
├── theme.yaml              # Theme metadata
├── settings.yaml           # User configuration schema
├── templates/
│   ├── index.ftl          # Homepage template
│   ├── post.ftl           # Individual post template
│   ├── archives.ftl       # News archive template
│   └── assets/
│       ├── styles.css     # Theme styles
│       ├── script.js      # JavaScript functionality
│       ├── profile.jpg    # Default profile image
│       └── data/          # JSON data files
│           ├── publications.json
│           ├── honors.json
│           └── news.json
├── README.md              # English documentation
└── README_CN.md           # Chinese documentation
```

---

## ⚙️ Configuration Options

The theme provides extensive configuration through Halo's settings panel:

### Basic Information
- Name (bilingual support)
- Role/Position
- Organization
- Email
- Profile photo
- Biography
- Collaboration/recruitment message

### Research
- Research vision statement
- Research framework
- Multiple research interests
- Detailed research directions with icons

### Social Links
- CV/Resume
- Google Scholar
- GitHub
- ResearchGate
- Blog
- ORCID
- LinkedIn

### Academic Service & Education
- Conference reviewing
- Journal editorial boards
- Teaching experience
- Educational background

### Style Customization
- Accent colors
- Layout options
- Visibility toggles for sections
- Display limits for lists

---

<div align="center">
  <h3>🌟 If you find this template useful, please give it a Star! 🌟</h3>
  <p>Made with ❤️ by Ethan & GLY2024</p>
</div>

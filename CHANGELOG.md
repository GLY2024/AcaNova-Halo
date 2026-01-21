# Changelog

All notable changes to the AcaNova-Halo theme will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-01-21

### Added
- **Multi-member support**: New page template system for creating individual member academic homepages
- `page_member.ftl` - Universal member page template that adapts based on member type
- `page_member.yaml` - Custom field configuration for member pages with 6 field groups
- `page_members_list.ftl` - Member list page template with filtering by member type
- `MEMBER_GUIDE.md` - Comprehensive guide for using the multi-member feature
- Support for 6 member types:
  - Teacher/Professor (教师/教授)
  - Postdoc (博士后)
  - PhD Student (博士生)
  - Master Student (硕士生)
  - Alumni - Research (已毕业，仍在科研)
  - Alumni - Career (已毕业，已离开科研)
- Member-specific fields:
  - Advisor information for students
  - Recruiting information for faculty/postdoc
  - Expected graduation for current students
  - Career experience for alumni
- Automatic display adaptation based on member type
- Member type badges with color coding
- Social links integration per member

### Features
- Each member can create and maintain their own page independently
- Custom fields for personal info, research, education, career, and social links
- Member pages are self-contained and don't affect theme homepage
- Support for unlimited number of member pages
- Members can use Markdown or rich text editor for content

### Documentation
- Added comprehensive member homepage usage guide (Chinese)
- Updated README_CN.md with multi-member scenarios
- Added examples for different member types

## [1.0.0] - 2026-01-19

### Added
- Initial release of AcaNova-Halo theme for Halo CMS
- Complete Halo theme structure with `theme.yaml` and `settings.yaml`
- Freemarker templates for homepage, posts, archives, and categories
- Comprehensive configuration system with 7 setting groups:
  - Basic settings (name, role, organization, email, photo, bio)
  - Research direction (vision, framework, interests, directions)
  - Social links (CV, Google Scholar, GitHub, ResearchGate, Blog, ORCID, LinkedIn)
  - Contact information (office location, university, city)
  - Academic service (reviewing, teaching, editorial work)
  - Education background (degrees, universities, periods)
  - Style customization (colors, layout, visibility toggles)
- Dynamic content management through Halo's post system for news
- JSON-based publication and honors management
- Responsive design supporting desktop, tablet, and mobile devices
- Multi-language support (English and Chinese)
- Font Awesome icon integration
- Tailwind CSS styling
- Professional academic typography with Inter and Crimson Text fonts

### Documentation
- Comprehensive Chinese documentation (README_CN.md)
- English documentation (README.md)
- Detailed installation guide (INSTALL.md)
- Configuration examples and troubleshooting guide

### Templates
- `index.ftl` - Main homepage template with profile and content sections
- `post.ftl` - Individual post/news detail page
- `archives.ftl` - News archive listing with pagination
- `category.ftl` - Category-based content filtering

### Features
- Sticky profile sidebar with social links
- Research interests card
- Structured research directions with icons
- Dynamic news feed from Halo posts
- Publication showcase with paper links
- Honors and awards timeline
- Academic service display
- Education history timeline
- Professional contact section
- Smooth scrolling navigation
- Mobile-friendly hamburger menu

### Migration
- Converted from AcaNova-X static template to Halo theme
- Moved assets to `templates/assets/` directory structure
- Preserved all original styling and JavaScript functionality
- Maintained backward compatibility with original data JSON files

## [Unreleased]

### Planned
- Theme options for different layout styles
- Support for multiple color schemes
- Integration with Halo's native publication categories
- Enhanced mobile navigation
- Dark mode support
- More icon options for research directions
- Shortcodes for common academic elements
- Multi-author support for lab/group pages

---

## Version History

- **1.0.0** (2026-01-19) - Initial Halo theme release
- **0.1.0** (Original) - AcaNova-X static template by Ethan

## Credits

- Original template: [AcaNova-X](https://github.com/yihangtao/AcaNova-X) by Ethan
- Halo theme adaptation: GLY2024
- Halo CMS: [Halo](https://halo.run)

## License

MIT License - see LICENSE file for details

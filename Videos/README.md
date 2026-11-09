# Videos folder

The IELTS course page plays **41 video lessons** (MP4). They are **not stored in this Git repository** because
they are very large (GitHub limits a single file to 100 MB and recommends small repositories). Everything in
this folder except this file is git-ignored.

## How to run the project with the videos

1. Put the 41 MP4 files directly inside this `Videos/` folder (next to `Audio/`).
2. Use **exactly** these names - they are the paths stored in the `sectionvideos` database table:

| Section | Files | Count |
|---|---|---|
| Listening | `listening_1.mp4` ... `listening_7.mp4` | 7 |
| Reading | `reading_1.mp4` ... `reading_10.mp4` | 10 |
| Speaking | `speaking_1.mp4` ... `speaking_10.mp4` | 10 |
| Writing | `writing_1.mp4` ... `writing_14.mp4` | 14 |

3. Open the course pages (`Courses/*_course.php`) - the playlist for each skill is read from the database.

Without the videos the site still works; only the lesson player stays empty.

## Sharing the videos with others

Upload them to a place that allows large files (for example Google Drive or unlisted YouTube videos) and put the
link here:

- Videos download link: *(add your link)*

> Only publish videos you created or have permission to share.


# Prompt Template: Security Audit

When invoked during the code review or verification phase, perform the following security checks on the codebase:
1. **Authentication & Session:** Verify that session storage is secure, timeouts are enforced (e.g., 30-min inactivity), and passwords are never logged or stored in plain text.
2. **Input Validation:** Check that all user inputs (blog titles, content, registration fields) are sanitized and length-validated against injection or buffer overflow risks.
3. **Authorization:** Ensure unauthorized users cannot access edit/delete routes or perform CRUD actions without matching the post author ID.
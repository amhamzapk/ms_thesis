
#define CHECK_hypfs_direntry \
    CHECK_SIZE_(struct, hypfs_direntry); \
    CHECK_FIELD_(struct, hypfs_direntry, type); \
    CHECK_FIELD_(struct, hypfs_direntry, encoding); \
    CHECK_FIELD_(struct, hypfs_direntry, pad); \
    CHECK_FIELD_(struct, hypfs_direntry, content_len); \
    CHECK_FIELD_(struct, hypfs_direntry, max_write_len)

#define CHECK_hypfs_dirlistentry \
    CHECK_SIZE_(struct, hypfs_dirlistentry); \
    CHECK_hypfs_direntry; \
    CHECK_FIELD_(struct, hypfs_dirlistentry, off_next); \
    CHECK_FIELD_(struct, hypfs_dirlistentry, name)

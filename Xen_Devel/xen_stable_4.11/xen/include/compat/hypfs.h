#ifndef _COMPAT_HYPFS_H
#define _COMPAT_HYPFS_H
#include <xen/compat.h>
#include <public/hypfs.h>
#pragma pack(4)
#include "xen.h"
#pragma pack(4)
struct compat_hypfs_direntry {
    uint8_t type;

    uint8_t encoding;

    uint16_t pad;
    uint32_t content_len;
    uint32_t max_write_len;
};

struct compat_hypfs_dirlistentry {
    struct xen_hypfs_direntry e;

    uint16_t off_next;

    char name[COMPAT_FLEX_ARRAY_DIM];
};
#pragma pack()
#endif /* _COMPAT_HYPFS_H */

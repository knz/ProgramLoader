#ifndef H_MEMFUNCS
#define H_MEMFUNCS

enum e_perms {
  perm_read = 1,
  perm_write = 2,
  perm_exec = 4,
  perm_none = 0
};
#define MEM_OK 0
#define MEM_ERR_ARG 1

int reserve_range(void *start, size_t size, enum e_perms);
void patcher_zero(char *start, size_t size);
void patcher_patch(char *start, size_t count, char *src, size_t len);
#endif

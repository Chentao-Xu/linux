#ifndef _LINUX_EXTFUSE_H
#define _LINUX_EXTFUSE_H

#define DATA_MAX_BLOCK_SIZE  4096    // 4KB

typedef enum {
	OPCODE = 0,
	NODEID,
	NUM_IN_ARGS,
	NUM_OUT_ARGS,
	IN_PARAM_0_SIZE,
	IN_PARAM_0_VALUE,
	IN_PARAM_1_SIZE,
	IN_PARAM_1_VALUE,
	IN_PARAM_2_SIZE,
	IN_PARAM_2_VALUE,
	OUT_PARAM_0,
	OUT_PARAM_1,
	READ_PASSTHROUGH,
	READ_MAP_CACHE,
} extfuse_arg_t;

typedef struct read_data_value {
    uint32_t size;
	uint8_t  is_last;     // 标记是否为最后一块（1 表示是，0 表示否）
    char     data[DATA_MAX_BLOCK_SIZE];
} read_data_value_t;

struct efuse_read_in {
	uint64_t fh;    // file handle
	uint64_t offset; // offset to read from
	uint64_t size;   // size of data to read
};

struct efuse_cache_in {
	uint64_t copied;
	uint64_t data_offset;
	uint64_t copy_len;
	read_data_value_t *data; // 缓存数据
};

#endif /* _LINUX_EXTFUSE_H */
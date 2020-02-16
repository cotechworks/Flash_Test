#ifndef __MYFUNC_H
#define __MYFUNC_H

#define BACKUP_FLASH_SECTOR_NUM      FLASH_SECTOR_7
#define BACKUP_FLASH_SECTOR_ADDRESS  0x08060000
#define BACKUP_FLASH_SIZE            4  /* データ数を指定 */

/*
==========================================================
データの格納内容
0:テスト0
1:テスト1
2:テスト2
3:テスト3
==========================================================
*/

char Flash_clear();
void Flash_load(void);
void Flash_write(void);



#endif /* __MYFUNC_H */
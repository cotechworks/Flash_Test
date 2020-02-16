#include "main.h"
#include "myfunc.h"
#include <string.h>

uint32_t Flash_Readbuf[BACKUP_FLASH_SIZE];
uint32_t Flash_Writebuf = 720000;
uint8_t test;

/* Flashのデータ消去 */
char Flash_clear()
{
    HAL_FLASH_Unlock();

    FLASH_EraseInitTypeDef EraseInitStruct;
    EraseInitStruct.TypeErase = FLASH_TYPEERASE_SECTORS;
    EraseInitStruct.Sector = BACKUP_FLASH_SECTOR_NUM;
    EraseInitStruct.VoltageRange = FLASH_VOLTAGE_RANGE_3;
    EraseInitStruct.NbSectors = 1;

    /* Eraseに失敗したsector番号がerror_sectorに入る */
    /* 正常にEraseができたときは0xFFFFFFFFが入る */
    uint32_t error_sector;
    HAL_StatusTypeDef result = HAL_FLASHEx_Erase(&EraseInitStruct, &error_sector);

    HAL_FLASH_Lock();

    return result == HAL_OK && error_sector == 0xFFFFFFFF;
}

/* Flashに保存しているデータをFlash_Readbufに読み込む */
void Flash_load(void)
{
  memcpy(Flash_Readbuf, (uint32_t*)BACKUP_FLASH_SECTOR_ADDRESS, BACKUP_FLASH_SIZE * 4);
}

void Flash_write(void)
{
  Flash_clear();		// erease sector11
  test = HAL_FLASH_Unlock();		// unlock flash
 
  test = HAL_FLASH_Program(
                           FLASH_TYPEPROGRAM_WORD, 
                           BACKUP_FLASH_SECTOR_ADDRESS, 
                           Flash_Writebuf); 
  
  HAL_FLASH_Lock();		// lock flash
}
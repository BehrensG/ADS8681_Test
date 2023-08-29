/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file         stm32h7xx_hal_msp.c
  * @brief        This file provides code for the MSP Initialization
  *               and de-Initialization codes.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */
extern DMA_HandleTypeDef hdma_pssi;

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN Define */

/* USER CODE END Define */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN Macro */

/* USER CODE END Macro */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* External functions --------------------------------------------------------*/
/* USER CODE BEGIN ExternalFunctions */

/* USER CODE END ExternalFunctions */

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */
/**
  * Initializes the Global MSP.
  */
void HAL_MspInit(void)
{
  /* USER CODE BEGIN MspInit 0 */

  /* USER CODE END MspInit 0 */

  __HAL_RCC_SYSCFG_CLK_ENABLE();

  /* System interrupt init*/
  /* PendSV_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(PendSV_IRQn, 15, 0);

  /* USER CODE BEGIN MspInit 1 */

  /* USER CODE END MspInit 1 */
}

/**
* @brief PSSI MSP Initialization
* This function configures the hardware resources used in this example
* @param hpssi: PSSI handle pointer
* @retval None
*/
void HAL_PSSI_MspInit(PSSI_HandleTypeDef* hpssi)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(hpssi->Instance==PSSI)
  {
  /* USER CODE BEGIN PSSI_MspInit 0 */

  /* USER CODE END PSSI_MspInit 0 */
    /* Peripheral clock enable */
    __HAL_RCC_DCMI_PSSI_CLK_ENABLE();

    __HAL_RCC_GPIOE_CLK_ENABLE();
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOD_CLK_ENABLE();
    __HAL_RCC_GPIOG_CLK_ENABLE();
    /**PSSI GPIO Configuration
    PE5     ------> PSSI_D6
    PE6     ------> PSSI_D7
    PA4     ------> PSSI_DE
    PA6     ------> PSSI_PDCK
    PC6     ------> PSSI_D0
    PC7     ------> PSSI_D1
    PC8     ------> PSSI_D2
    PC9     ------> PSSI_D3
    PC11     ------> PSSI_D4
    PD3     ------> PSSI_D5
    PG9     ------> PSSI_RDY
    */
    GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_4;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9
                          |GPIO_PIN_11;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_3;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF13_PSSI;
    HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);

    /* PSSI DMA Init */
    /* PSSI Init */
    hdma_pssi.Instance = DMA1_Stream0;
    hdma_pssi.Init.Request = DMA_REQUEST_DCMI_PSSI;
    hdma_pssi.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_pssi.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_pssi.Init.MemInc = DMA_MINC_ENABLE;
    hdma_pssi.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
    hdma_pssi.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
    hdma_pssi.Init.Mode = DMA_NORMAL;
    hdma_pssi.Init.Priority = DMA_PRIORITY_HIGH;
    hdma_pssi.Init.FIFOMode = DMA_FIFOMODE_ENABLE;
    hdma_pssi.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    hdma_pssi.Init.MemBurst = DMA_MBURST_SINGLE;
    hdma_pssi.Init.PeriphBurst = DMA_PBURST_SINGLE;
    if (HAL_DMA_Init(&hdma_pssi) != HAL_OK)
    {
      Error_Handler();
    }

    /* Several peripheral DMA handle pointers point to the same DMA handle.
     Be aware that there is only one channel to perform all the requested DMAs. */
    __HAL_LINKDMA(hpssi,hdmarx,hdma_pssi);
    __HAL_LINKDMA(hpssi,hdmatx,hdma_pssi);

  /* USER CODE BEGIN PSSI_MspInit 1 */

  /* USER CODE END PSSI_MspInit 1 */
  }

}

/**
* @brief PSSI MSP De-Initialization
* This function freeze the hardware resources used in this example
* @param hpssi: PSSI handle pointer
* @retval None
*/
void HAL_PSSI_MspDeInit(PSSI_HandleTypeDef* hpssi)
{
  if(hpssi->Instance==PSSI)
  {
  /* USER CODE BEGIN PSSI_MspDeInit 0 */

  /* USER CODE END PSSI_MspDeInit 0 */
    /* Peripheral clock disable */
    __HAL_RCC_DCMI_PSSI_CLK_DISABLE();

    /**PSSI GPIO Configuration
    PE5     ------> PSSI_D6
    PE6     ------> PSSI_D7
    PA4     ------> PSSI_DE
    PA6     ------> PSSI_PDCK
    PC6     ------> PSSI_D0
    PC7     ------> PSSI_D1
    PC8     ------> PSSI_D2
    PC9     ------> PSSI_D3
    PC11     ------> PSSI_D4
    PD3     ------> PSSI_D5
    PG9     ------> PSSI_RDY
    */
    HAL_GPIO_DeInit(GPIOE, GPIO_PIN_5|GPIO_PIN_6);

    HAL_GPIO_DeInit(GPIOA, GPIO_PIN_4|GPIO_PIN_6);

    HAL_GPIO_DeInit(GPIOC, GPIO_PIN_6|GPIO_PIN_7|GPIO_PIN_8|GPIO_PIN_9
                          |GPIO_PIN_11);

    HAL_GPIO_DeInit(GPIOD, GPIO_PIN_3);

    HAL_GPIO_DeInit(GPIOG, GPIO_PIN_9);

    /* PSSI DMA DeInit */
    HAL_DMA_DeInit(hpssi->hdmarx);
    HAL_DMA_DeInit(hpssi->hdmatx);
  /* USER CODE BEGIN PSSI_MspDeInit 1 */

  /* USER CODE END PSSI_MspDeInit 1 */
  }

}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */

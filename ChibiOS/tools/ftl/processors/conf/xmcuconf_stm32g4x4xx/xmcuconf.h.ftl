[#ftl]
[#--
    ChibiOS - Copyright (C) 2006..2024 Giovanni Di Sirio.

    This file is part of ChibiOS.

    ChibiOS is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    ChibiOS is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
  --]
[@pp.dropOutputFile /]
[#import "/@lib/libutils.ftl" as utils /]
[#import "/@lib/liblicense.ftl" as license /]
[@pp.changeOutputFile name="xmcuconf.h" /]
/*
[@license.EmitLicenseAsText /]
*/

/*
 * STM32G4xx drivers configuration.
 * The following settings override the default settings present in
 * the various device driver implementation headers.
 * Note that the settings for each driver only have effect if the whole
 * driver is enabled in halconf.h.
 *
 * IRQ priorities:
 * 15...0       Lowest...Highest.
 *
 * DMA priorities:
 * 0...3        Lowest...Highest.
 */

#ifndef XMCUCONF_H
#define XMCUCONF_H

#define __STM32G4xx_XMCUCONF__
#define __STM32G473_XMCUCONF__
#define __STM32G483_XMCUCONF__
#define __STM32G474_XMCUCONF__
#define __STM32G484_XMCUCONF__

/*
 * HAL driver system settings.
 */
#define STM32_NO_INIT                       ${doc.STM32_NO_INIT!"FALSE"}
#define STM32_CLOCK_DYNAMIC                 ${doc.STM32_CLOCK_DYNAMIC!"FALSE"}
#define STM32_VOS                           ${doc.STM32_VOS!"STM32_VOS_RANGE1"}
#define STM32_PWR_BOOST                     ${doc.STM32_PWR_BOOST!"TRUE"}
#define STM32_PWR_CR2                       ${doc.STM32_PWR_CR2!"(PWR_CR2_PLS_LEV0)"}
#define STM32_PWR_CR3                       ${doc.STM32_PWR_CR3!"(PWR_CR3_EIWF)"}
#define STM32_PWR_CR4                       ${doc.STM32_PWR_CR4!"(0U)"}
#define STM32_PWR_PUCRA                     ${doc.STM32_PWR_PUCRA!"(0U)"}
#define STM32_PWR_PDCRA                     ${doc.STM32_PWR_PDCRA!"(0U)"}
#define STM32_PWR_PUCRB                     ${doc.STM32_PWR_PUCRB!"(0U)"}
#define STM32_PWR_PDCRB                     ${doc.STM32_PWR_PDCRB!"(0U)"}
#define STM32_PWR_PUCRC                     ${doc.STM32_PWR_PUCRC!"(0U)"}
#define STM32_PWR_PDCRC                     ${doc.STM32_PWR_PDCRC!"(0U)"}
#define STM32_PWR_PUCRD                     ${doc.STM32_PWR_PUCRD!"(0U)"}
#define STM32_PWR_PDCRD                     ${doc.STM32_PWR_PDCRD!"(0U)"}
#define STM32_PWR_PUCRE                     ${doc.STM32_PWR_PUCRE!"(0U)"}
#define STM32_PWR_PDCRE                     ${doc.STM32_PWR_PDCRE!"(0U)"}
#define STM32_PWR_PUCRF                     ${doc.STM32_PWR_PUCRF!"(0U)"}
#define STM32_PWR_PDCRF                     ${doc.STM32_PWR_PDCRF!"(0U)"}
#define STM32_PWR_PUCRG                     ${doc.STM32_PWR_PUCRG!"(0U)"}
#define STM32_PWR_PDCRG                     ${doc.STM32_PWR_PDCRG!"(0U)"}
#define STM32_HSI16_ENABLED                 ${doc.STM32_HSI16_ENABLED!"TRUE"}
#define STM32_HSI48_ENABLED                 ${doc.STM32_HSI48_ENABLED!"TRUE"}
#define STM32_HSE_ENABLED                   ${doc.STM32_HSE_ENABLED!"TRUE"}
#define STM32_LSI_ENABLED                   ${doc.STM32_LSI_ENABLED!"FALSE"}
#define STM32_LSE_ENABLED                   ${doc.STM32_LSE_ENABLED!"TRUE"}
#define STM32_SW                            ${doc.STM32_SW!"STM32_SW_PLLRCLK"}
#define STM32_PLLSRC                        ${doc.STM32_PLLSRC!"STM32_PLLSRC_HSE"}
#define STM32_PLLM_VALUE                    ${doc.STM32_PLLM_VALUE!"6"}
#define STM32_PLLN_VALUE                    ${doc.STM32_PLLN_VALUE!"85"}
#define STM32_PLLPDIV_VALUE                 ${doc.STM32_PLLPDIV_VALUE!"0"}
#define STM32_PLLP_VALUE                    ${doc.STM32_PLLP_VALUE!"7"}
#define STM32_PLLQ_VALUE                    ${doc.STM32_PLLQ_VALUE!"8"}
#define STM32_PLLR_VALUE                    ${doc.STM32_PLLR_VALUE!"2"}
#define STM32_HPRE                          ${doc.STM32_HPRE!"STM32_HPRE_DIV1"}
#define STM32_PPRE1                         ${doc.STM32_PPRE1!"STM32_PPRE1_DIV2"}
#define STM32_PPRE2                         ${doc.STM32_PPRE2!"STM32_PPRE2_DIV1"}
#define STM32_MCOSEL                        ${doc.STM32_MCOSEL!"STM32_MCOSEL_NOCLOCK"}
#define STM32_MCOPRE                        ${doc.STM32_MCOPRE!"STM32_MCOPRE_DIV1"}
#define STM32_LSCOSEL                       ${doc.STM32_LSCOSEL!"STM32_LSCOSEL_NOCLOCK"}

/*
 * Peripherals clock sources.
 */
#define STM32_USART1SEL                     ${doc.STM32_USART1SEL!"STM32_USART1SEL_SYSCLK"}
#define STM32_USART2SEL                     ${doc.STM32_USART2SEL!"STM32_USART2SEL_SYSCLK"}
#define STM32_USART3SEL                     ${doc.STM32_USART3SEL!"STM32_USART3SEL_SYSCLK"}
#define STM32_UART4SEL                      ${doc.STM32_UART4SEL!"STM32_UART4SEL_SYSCLK"}
#define STM32_UART5SEL                      ${doc.STM32_UART5SEL!"STM32_UART5SEL_SYSCLK"}
#define STM32_LPUART1SEL                    ${doc.STM32_LPUART1SEL!"STM32_LPUART1SEL_PCLK1"}
#define STM32_I2C1SEL                       ${doc.STM32_I2C1SEL!"STM32_I2C1SEL_PCLK1"}
#define STM32_I2C2SEL                       ${doc.STM32_I2C2SEL!"STM32_I2C2SEL_PCLK1"}
#define STM32_I2C3SEL                       ${doc.STM32_I2C3SEL!"STM32_I2C3SEL_PCLK1"}
#define STM32_I2C4SEL                       ${doc.STM32_I2C4SEL!"STM32_I2C4SEL_PCLK1"}
#define STM32_LPTIM1SEL                     ${doc.STM32_LPTIM1SEL!"STM32_LPTIM1SEL_PCLK1"}
#define STM32_SAI1SEL                       ${doc.STM32_SAI1SEL!"STM32_SAI1SEL_SYSCLK"}
#define STM32_I2S23SEL                      ${doc.STM32_I2S23SEL!"STM32_I2S23SEL_SYSCLK"}
#define STM32_FDCANSEL                      ${doc.STM32_FDCANSEL!"STM32_FDCANSEL_HSE"}
#define STM32_CLK48SEL                      ${doc.STM32_CLK48SEL!"STM32_CLK48SEL_HSI48"}
#define STM32_ADC12SEL                      ${doc.STM32_ADC12SEL!"STM32_ADC12SEL_PLLPCLK"}
#define STM32_ADC345SEL                     ${doc.STM32_ADC345SEL!"STM32_ADC345SEL_PLLPCLK"}
#define STM32_QSPISEL                       ${doc.STM32_QSPISEL!"STM32_QSPISEL_SYSCLK"}
#define STM32_RTCSEL                        ${doc.STM32_RTCSEL!"STM32_RTCSEL_NOCLOCK"}

/*
 * IRQ system settings.
 */
#define STM32_IRQ_EXTI0_PRIORITY            ${doc.STM32_IRQ_EXTI0_PRIORITY!"6"}
#define STM32_IRQ_EXTI1_PRIORITY            ${doc.STM32_IRQ_EXTI1_PRIORITY!"6"}
#define STM32_IRQ_EXTI2_PRIORITY            ${doc.STM32_IRQ_EXTI2_PRIORITY!"6"}
#define STM32_IRQ_EXTI3_PRIORITY            ${doc.STM32_IRQ_EXTI3_PRIORITY!"6"}
#define STM32_IRQ_EXTI4_PRIORITY            ${doc.STM32_IRQ_EXTI4_PRIORITY!"6"}
#define STM32_IRQ_EXTI5_9_PRIORITY          ${doc.STM32_IRQ_EXTI5_9_PRIORITY!"6"}
#define STM32_IRQ_EXTI10_15_PRIORITY        ${doc.STM32_IRQ_EXTI10_15_PRIORITY!"6"}
#define STM32_IRQ_EXTI164041_PRIORITY       ${doc.STM32_IRQ_EXTI164041_PRIORITY!"6"}
#define STM32_IRQ_EXTI17_PRIORITY           ${doc.STM32_IRQ_EXTI17_PRIORITY!"6"}
#define STM32_IRQ_EXTI18_PRIORITY           ${doc.STM32_IRQ_EXTI18_PRIORITY!"6"}
#define STM32_IRQ_EXTI19_PRIORITY           ${doc.STM32_IRQ_EXTI19_PRIORITY!"6"}
#define STM32_IRQ_EXTI20_PRIORITY           ${doc.STM32_IRQ_EXTI20_PRIORITY!"6"}
#define STM32_IRQ_EXTI212229_PRIORITY       ${doc.STM32_IRQ_EXTI212229_PRIORITY!"6"}
#define STM32_IRQ_EXTI30_32_PRIORITY        ${doc.STM32_IRQ_EXTI30_32_PRIORITY!"6"}
#define STM32_IRQ_EXTI33_PRIORITY           ${doc.STM32_IRQ_EXTI33_PRIORITY!"6"}

#define STM32_IRQ_FDCAN1_PRIORITY           ${doc.STM32_IRQ_FDCAN1_PRIORITY!"10"}
#define STM32_IRQ_FDCAN2_PRIORITY           ${doc.STM32_IRQ_FDCAN2_PRIORITY!"10"}
#define STM32_IRQ_FDCAN3_PRIORITY           ${doc.STM32_IRQ_FDCAN3_PRIORITY!"10"}

#define STM32_IRQ_TIM1_BRK_TIM15_PRIORITY   ${doc.STM32_IRQ_TIM1_BRK_TIM15_PRIORITY!"7"}
#define STM32_IRQ_TIM1_UP_TIM16_PRIORITY    ${doc.STM32_IRQ_TIM1_UP_TIM16_PRIORITY!"7"}
#define STM32_IRQ_TIM1_TRGCO_TIM17_PRIORITY ${doc.STM32_IRQ_TIM1_TRGCO_TIM17_PRIORITY!"7"}
#define STM32_IRQ_TIM1_CC_PRIORITY          ${doc.STM32_IRQ_TIM1_CC_PRIORITY!"7"}
#define STM32_IRQ_TIM2_PRIORITY             ${doc.STM32_IRQ_TIM2_PRIORITY!"7"}
#define STM32_IRQ_TIM3_PRIORITY             ${doc.STM32_IRQ_TIM3_PRIORITY!"7"}
#define STM32_IRQ_TIM4_PRIORITY             ${doc.STM32_IRQ_TIM4_PRIORITY!"7"}
#define STM32_IRQ_TIM5_PRIORITY             ${doc.STM32_IRQ_TIM5_PRIORITY!"7"}
#define STM32_IRQ_TIM6_PRIORITY             ${doc.STM32_IRQ_TIM6_PRIORITY!"7"}
#define STM32_IRQ_TIM7_PRIORITY             ${doc.STM32_IRQ_TIM7_PRIORITY!"7"}
#define STM32_IRQ_TIM8_UP_PRIORITY          ${doc.STM32_IRQ_TIM8_UP_PRIORITY!"7"}
#define STM32_IRQ_TIM8_CC_PRIORITY          ${doc.STM32_IRQ_TIM8_CC_PRIORITY!"7"}
#define STM32_IRQ_TIM20_UP_PRIORITY         ${doc.STM32_IRQ_TIM20_UP_PRIORITY!"7"}
#define STM32_IRQ_TIM20_CC_PRIORITY         ${doc.STM32_IRQ_TIM20_CC_PRIORITY!"7"}

#define STM32_IRQ_USART1_PRIORITY           ${doc.STM32_IRQ_USART1_PRIORITY!"12"}
#define STM32_IRQ_USART2_PRIORITY           ${doc.STM32_IRQ_USART2_PRIORITY!"12"}
#define STM32_IRQ_USART3_PRIORITY           ${doc.STM32_IRQ_USART3_PRIORITY!"12"}
#define STM32_IRQ_UART4_PRIORITY            ${doc.STM32_IRQ_UART4_PRIORITY!"12"}
#define STM32_IRQ_UART5_PRIORITY            ${doc.STM32_IRQ_UART5_PRIORITY!"12"}
#define STM32_IRQ_LPUART1_PRIORITY          ${doc.STM32_IRQ_LPUART1_PRIORITY!"12"}

/*
 * SIO driver system settings.
 */
#define STM32_SIO_USE_USART1                ${doc.STM32_SIO_USE_USART1!"FALSE"}
#define STM32_SIO_USE_USART2                ${doc.STM32_SIO_USE_USART2!"FALSE"}
#define STM32_SIO_USE_USART3                ${doc.STM32_SIO_USE_USART3!"FALSE"}
#define STM32_SIO_USE_UART4                 ${doc.STM32_SIO_USE_UART4!"FALSE"}
#define STM32_SIO_USE_UART5                 ${doc.STM32_SIO_USE_UART5!"FALSE"}
#define STM32_SIO_USE_LPUART1               ${doc.STM32_SIO_USE_LPUART1!"FALSE"}

/*
 * SPI driver system settings.
 */
#define STM32_SPI_USE_SPI1                  ${doc.STM32_SPI_USE_SPI1!"FALSE"}
#define STM32_SPI_USE_SPI2                  ${doc.STM32_SPI_USE_SPI2!"FALSE"}
#define STM32_SPI_USE_SPI3                  ${doc.STM32_SPI_USE_SPI3!"FALSE"}
#define STM32_SPI_USE_SPI4                  ${doc.STM32_SPI_USE_SPI4!"FALSE"}
#define STM32_SPI_SPI1_RX_DMA_STREAM        ${doc.STM32_SPI_SPI1_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI1_TX_DMA_STREAM        ${doc.STM32_SPI_SPI1_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI2_RX_DMA_STREAM        ${doc.STM32_SPI_SPI2_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI2_TX_DMA_STREAM        ${doc.STM32_SPI_SPI2_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI3_RX_DMA_STREAM        ${doc.STM32_SPI_SPI3_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI3_TX_DMA_STREAM        ${doc.STM32_SPI_SPI3_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI4_RX_DMA_STREAM        ${doc.STM32_SPI_SPI4_RX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI4_TX_DMA_STREAM        ${doc.STM32_SPI_SPI4_TX_DMA_STREAM!"STM32_DMA_STREAM_ID_ANY"}
#define STM32_SPI_SPI1_DMA_PRIORITY         ${doc.STM32_SPI_SPI1_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI2_DMA_PRIORITY         ${doc.STM32_SPI_SPI2_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI3_DMA_PRIORITY         ${doc.STM32_SPI_SPI3_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI4_DMA_PRIORITY         ${doc.STM32_SPI_SPI4_DMA_PRIORITY!"1"}
#define STM32_SPI_SPI1_IRQ_PRIORITY         ${doc.STM32_SPI_SPI1_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI2_IRQ_PRIORITY         ${doc.STM32_SPI_SPI2_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI3_IRQ_PRIORITY         ${doc.STM32_SPI_SPI3_IRQ_PRIORITY!"10"}
#define STM32_SPI_SPI4_IRQ_PRIORITY         ${doc.STM32_SPI_SPI4_IRQ_PRIORITY!"10"}
#define STM32_SPI_DMA_ERROR_HOOK(spip)      ${doc.STM32_SPI_DMA_ERROR_HOOK!"osalSysHalt(\"DMA failure\")"}

/*
 * ST driver system settings.
 */
#define STM32_ST_IRQ_PRIORITY               ${doc.STM32_ST_IRQ_PRIORITY!"8"}
#define STM32_ST_USE_TIMER                  ${doc.STM32_ST_USE_TIMER!"2"}

#endif /* XMCUCONF_H */

# BSBR-Sentinel-2L2A
***
A set of scripts for preprocessing Sentinel-2 Level-2A remote sensing data for use in monitoring the ecosystems of the Black Sea Biosphere Reserve
---

Due to the similarity of natural conditions and the common geological past, the entire territory of the Lower Dnieper terrace-delta plain is considered part of the Black Sea Biosphere Reserve region. This region is quite large and is covered by three adjacent Sentinel-2 remote sensing data tiles (T36TUS, T36TVS, and T36TWS), which creates certain inconveniences when analyzing these satellite images within the framework of monitoring the dynamics of the region's natural and anthropogenic ecosystems. To overcome these inconveniences, a set of scripts for preprocessing remote sensing data was developed at the Black Sea Biosphere Reserve.

The repository contains 3 scripts that preprocess Sentinel-2A and Sentinel-2B Level-2A remote sensing data for use in monitoring natural and anthropogenic ecosystems in the Black Sea Biosphere Reserve region of the National Academy of Sciences of Ukraine.

The script cropS2.sh performs the first stage of preprocessing, which involves cropping remote sensing data scenes along the boundaries of the Black Sea Biosphere Reserve region. To ensure the correct operation of this script, place the spectral channel files B02, B03, B04, B08 (with resolution 10 m/pixel) and the spectral channel files B05, B06, B07, B08A, B11, B12 (with resolution 20 m/pixel) from each of the three tiles - T36TUS, T36TVS, and T36TWS (a total of 30 files in jp2 format) into the working directory.

The script mergeS2.sh performs the second stage of remote sensing data preprocessing, which involves channel-wise merging of the individual channels cropped to the boundaries of the reserve region from the three tiles (T36TUS, T36TVS, and T36TWS) that fully cover the reserve region.

The script vrtBuilderS2.sh creates virtual rasters with various combinations of the merged spectral channels obtained in the second stage of remote sensing data preprocessing.

_**This repository is part of the methodological support for the ecosystem monitoring framework of the Black Sea Biosphere Reserve and adjacent non-reserve territories within the Nature Chronicles of the Black Sea Biosphere Reserve.**_
<br />
***
Набір скриптів для попередньої підготовки даних дистанційного зондування Sentinel-2 рівня обробки L2A для використання їх у моніторингу екосистем Чорноморського біосферного заповідника
---

За подібністю природних умов та спільністю геологічного минулого до регіону Чорноморського біосферного заповідника відноситься вся територія Нижньодніпровської терасово-дельтової рівнини. Цей регіон досить великий і покривається трьома сусідніми тайлами даних дистанційного зондування Sentinel-2 (T36TUS, T36TVS та T36TWS), що створює певні незручності при аналізі цих супутникових знімків в рамках моніторингу динаміки природних і антропогенних екосистем регіону. Для подолання цих незручностей у Чорноморському біосферному заповіднику розробили набір скриптів для попередньої підготовки даних дистанційного зондування.

Репозиторій містить 3 скрипти, що здійснюють попередню підготовку даних дистанційного зондування Sentinel-2A та Sentinel-2B рівня обробки L2A до застосування у моніторингу природних та антропогенних екосистем у регіоні Чорноморського біосферного заповідника НАН України.

Скрипт cropS2.sh — здійснює перший етап підготовки, який полягає у обрізанні сцен даних дистанційного зондування по межах регіону Чорноморського біосферного заповідника. Для коректної роботи цього скрипта у робочу директорію слід помістити файли спектральних каналів B02, B03, B04 та B08 (із роздільністю 10 м/піксель) та файли спектральних каналів B05, B06, B07, B08A, B11, B12 (із роздільністю 20 м/піксель) з кожного із трьох тайлів - T36TUS, T36TVS, and T36TWS (всього 30 файлів у форматі jp2).

Скрипт mergeS2.sh — здійснює другий етап підготовки даних дистанційного зондування, який полягає у поканальному склеюванні отриманих на попередньому етапі окремих обрізаних по межі регіону заповідника каналів з трьох тайлів (T36TUS, T36TVS та T36TWS), що повністю покривають регіон заповідника.

Скрипт vrtBuilderS2.sh — створює віртуальні растри з різними комбінаціями склеєних спектральних каналів, отриманих на другому етапі попередньої підготовки даних дистанційного зондування.

_**Цей репозиторій є частиною методологічного забезпечення системи моніторингу екосистем Чорноморського біосферного заповідника та суміжних територій, що не входять до складу заповідника, в рамках Літопису природи Чорноморського біосферного заповідника.**_

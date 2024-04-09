/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import ItemData from '@bundle:com.example.component/entry/ets/viewmodel/ItemData';
/**
 * Binds data to components and provides interfaces.
 */
export class MainViewModel {
    /**
     * Get swiper image data.
     *
     * @return {Array<Resource>} swiperImages.
     */
    getSwiperImages() {
        let swiperImages = [
            { "id": 16777293, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" },
            { "id": 16777375, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" },
            { "id": 16777294, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" },
            { "id": 16777395, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }
        ];
        return swiperImages;
    }
    /**
     * Get data of the first grid.
     *
     * @return {Array<PageResource>} firstGridData.
     */
    getFirstGridData() {
        let firstGridData = [
            new ItemData({ "id": 16777255, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777381, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777232, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777297, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777250, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777296, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777273, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777386, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777254, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777387, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777231, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777299, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777228, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777382, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777261, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777388, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" })
        ];
        return firstGridData;
    }
    /**
     * Get data of the second grid.
     *
     * @return {Array<PageResource>} secondGridData.
     */
    getSecondGridData() {
        let secondGridData = [
            new ItemData({ "id": 16777248, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777392, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777247, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777241, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777295, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777246, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777239, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777373, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777244, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777240, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777394, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777245, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" })
        ];
        return secondGridData;
    }
    /**
     * Get data of the setting list.
     *
     * @return {Array<PageResource>} settingListData.
     */
    getSettingListData() {
        let settingListData = [
            new ItemData({ "id": 16777269, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777393, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777272, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777267, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777396, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777268, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777383, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777266, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777218, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777271, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777389, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" }),
            new ItemData({ "id": 16777270, "type": 10003, params: [], "bundleName": "com.example.component", "moduleName": "entry" }, { "id": 16777374, "type": 20000, params: [], "bundleName": "com.example.component", "moduleName": "entry" })
        ];
        return settingListData;
    }
}
export default new MainViewModel();
//# sourceMappingURL=MainViewModel.js.map
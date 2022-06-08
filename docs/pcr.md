[回主說明文件](../README.md)

# PCR 檢驗結果病患動態看板

## schema

![](./drawios/pcr.drawio.svg)

## API 說明
Url: http://HOST/pcrs/api
Auth: bearer '5i1z0qcOQnzKU4bhoSj9f0qoNWzIOCCHKvQSp34D'
API_name: inpatients 
Type: POST
Description: PCR 陽性住院資料
Input Example: 

```
  [
    {
    "inpatient_seq": "1110001234",
    "is_special_ward": true,
    "positived_days": 4,
    "patient_no": "0123456789",
    "patient_name": "王小明",
    "patient_idno": "Ａ123456789",
    "ward_bed": "w1-12",
    "vs_doctor_uid": "AA",
    "vs_doctor_name": "李大同",
    "admitted_at": "2022-06-01T14:37:00.000Z",
    "examined_at": "2022-06-03T14:59:00.000Z",
    "reported_at": "2022-06-02T14:38:00.000Z",
    "order_code": "E5003C",
    "examined_result": "positive"
  },
  {
    "inpatient_seq": "1110005678",
    "is_special_ward": false,
    "positived_days": 10,
    "patient_no": "0123456798",
    "patient_name": "王大明",
    "patient_idno": "Z123456789",
    "ward_bed": "w1-21",
    "vs_doctor_uid": "ZZ",
    "vs_doctor_name": "李小同",
    "admitted_at": "2022-06-01T14:37:00.000Z",
    "examined_at": "2022-06-01T14:59:00.000Z",
    "reported_at": "2022-06-11T14:38:00.000Z",
    "order_code": "E5003C",
    "examined_result": "positive"
  },
  ]
```

Output: {"resultCode": 0}
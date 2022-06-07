[回主說明文件](../README.md)

# PCR 檢驗結果病患動態看板

## schema

![](./drawios/pcr.drawio.svg)

## json format

```
  {
    "id": 1,
    "inpatient_seq": "1110001234",
    "is_specail_ward": true,
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
    "examined_result": "positive",
    "created_at": "2022-06-07T06:39:26.531Z",
    "updated_at": "2022-06-07T06:39:26.531Z",
    "url": "http://localhost:3000/pcrs/1.json"
  }
```
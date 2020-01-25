
const CardEnum = {
    BJ: 1 << 0,
    SZ: 1 << 1,
    THU: 1 << 2,
    CU: 1 << 3,
    PBOC1: 1 << 4,
    PBOC2: 1 << 5,
    PBOC3: 1 << 6,
    Wuhan: 1 << 7,
    CQ: 1 << 8,
    TU: 1 << 9,
    VISA: 1 << 10,
    MC: 1 << 11,
    ALL: 0xFFFF,
};
const PresetAPDU = [
    [CardEnum.BJ, '00B0840020', '10007515114099280102003000000000000000000000000020180410202404109000'],
    [CardEnum.BJ | CardEnum.Wuhan | CardEnum.CU,
        '00A4000002100100', '6F08840450424F43A5009000'],
    [CardEnum.SZ, '00A4000002100100', '6f3284075041592e535a54a5279f0801029f0c200000000000000000fd21000051800000a344c2132017031420270314101000009000'],
    // [CardEnum.ALL, '00B08400020', '6A82'],
    [CardEnum.SZ, '00B095001C', '0000000000000000fd21000051800000a344c21320170314202703149000'],
    [CardEnum.THU | CardEnum.CQ, '00A40000023F00', '9000'],
    [CardEnum.THU, '00B0950021', '0009000401f1000550a3000119022522073100041237007d01f407d01e001401019000'],
    [CardEnum.THU, '00B0960026', 'd0c0d1eecf4800000000000000000000000000003030303030303081323031373031303033389000'],
    [CardEnum.THU, '00A4040009A0000000038698070100', '6f328409a00000000386980701a5259f0801019f0c1e62640022333300010301000000000000100011aa201301012015123155669000'],

    [CardEnum.CU, '00A4040009A0000000038698070100', '6F2E8409A00000000386980701A5219F0C1E0000000100000000010100010102030405060708201701012027123100009000'],
    [CardEnum.CU, '00B095001E', '0000000100000000010100010102030405060708201701012027123100009000'],

    [CardEnum.TU, '00A4040008A00000063201010500', '6F318408A000000632010105A5259F0801029F0C1E01011000FFFFFFFF020103105170070104791381201907182040123100009000'],
    [CardEnum.TU, '00B097000B', '00000156100010000001019000'],

    [CardEnum.CQ, '00A4040009A0000000038698070100', '6F348409A00000000386980701A5279F0801999F0C2000014000201412032099123100000000000000000000000000000000000000009000'],
    [CardEnum.CQ, '00B095001E', '0001400020141203209912310000000000000000000000000000000000009000'],
    [CardEnum.CQ, '00B0850000', '847540000000FFFF010040004000000212668612201405120002C0A80A181920141203000000000000000000000000009000'],
    [CardEnum.THU, '805C000104', '8000164e9000'],
    [CardEnum.ALL ^ CardEnum.THU, '805C000204', '8000164e9000'],

    [CardEnum.PBOC3, '00A404000E325041592E5359532E444446303100', '6F36840E325041592E5359532E4444463031A524BF0C21611F4F08A000000333010103501050424F432051554153494352454449548701019000'],
    [CardEnum.PBOC3, '00A4040008A00000033301010300', '6F498408A000000333010103A53D501050424F432051554153494352454449548701019F38189F66049F02069F03069F1A0295055F2A029A039C019F37045F2D027A68BF0C059F4D020B0A9000'],
    [CardEnum.PBOC3, '80A8000023832126000000000000000001000000000000015600000000000156200331001122334400', '77818182027C009F3602000357136259071138766890D24012010000029700000F9F1013070A0103A01000010A010000000000C270FA1C9F26089249132C6828543B9F63103031303433333230000000000000A0005F3401009F6C0220009F50060000000000005F201A20202020202020202020202020202020202020202020202020209000'],

    [CardEnum.VISA, '00A404000E325041592E5359532E444446303100', '6F30840E325041592E5359532E4444463031A51EBF0C1B61194F07A0000000031010500B56495341204352454449548701019000'],
    [CardEnum.VISA, '00A4040007A000000003101000', '6F488407A0000000031010A53D500B56495341204352454449548701019F38189F66049F02069F03069F1A0295055F2A029A039C019F37045F2D04656E7A68BF0C089F5A0540015601569000'],
    [CardEnum.VISA, '80A8000023832126000000000000000001000000000000015600000000000156200331001122334400', '77478202200057134693801184579311D24072010000064700000F5F3401019F100706100A03A000009F2608C303C0EBCC51F73D9F360200099F2701809F6C0228009F6E04207000009000'],

    [CardEnum.MC, '00A404000E325041592E5359532E444446303100', '6F2F840E325041592E5359532E4444463031A51DBF0C1A61184F07A0000000041010500A4D4153544552434152448701019000'],
    [CardEnum.MC, '00A4040007A000000004101000', '6F338407A0000000041010A528500A4D4153544552434152448701015F2D04656E7A68BF0C0F9F6E07015600003030009F4D020B0A9000'],
    [CardEnum.MC, '80A8000002830000', '770E82021980940810010201200101009000'],
    [CardEnum.MC, '00B2011400', '7081AB57134455881188579911D23092010000008600000F5A0844558811885799115F24032309305F25031809175F280201565F300202015F3401018C279F02069F03069F1A0295055F2A029A039C019F37049F35019F45029F4C089F34039F21039F7C148D0C910A8A0295059F37049F4C088E0E000000000000000042031E031F039F0702FF009F080200029F0D05B4508400009F0E0500000000009F0F05B4708480009F420201569F4A01829000'],

    [CardEnum.ALL, '80CA9F3600', '9F360200169000'],
    [CardEnum.ALL, '80CA9F1700', '9F1701019000'],
];
let MockCard = CardEnum.MC;

function poll() {
    return Promise.resolve(JSON.stringify({
        "type": "iso7816",
        "id": "deadbeef",
        "standard": MockCard == CardEnum.THU ? "ISO 14443-4 (Type B)" : "ISO 14443-4 (Type A)",
        "atqa": '',
        "sak": '',
        "historicalBytes": '',
        "protocolInfo": '',
        "applicationData": '',
        "hiLayerResponse": '',
        "manufacturer": '',
        "systemCode": '',
        "dsfId": ''
    }));
}

function transceive(rapdu) {
    console.log('>', rapdu);
    for (const item of PresetAPDU) {
        if (item[0] & MockCard) {
            if (rapdu == item[1]) {
                console.log('<', item[2]);
                return Promise.resolve(item[2]);
            }
        }
    }
    // console.log("file not found");
    console.log('<', '6A82');
    return Promise.resolve('6A82');
}

function report(data) {
    console.log('report', data);
}

function log(data) {
    console.log(data);
}

use garaga::definitions::{G1Point, G2Point, E12D, G2Line, u384};
use garaga::definitions::u288;
use garaga::groth16::Groth16VerifyingKey;

pub const N_PUBLIC_INPUTS: usize = 7;

pub const vk: Groth16VerifyingKey = Groth16VerifyingKey {
    alpha_beta_miller_loop_result: E12D {
        w0: u288 {
            limb0: 0x7c735f81e7bb8c7fe8638e26,
            limb1: 0xc8df505d5c6016d7d1c7b03,
            limb2: 0xb55533cac49aa50,
        },
        w1: u288 {
            limb0: 0xc4f9d2720a331631cd30a719,
            limb1: 0xe673ed3fd47cebe6f847ae5f,
            limb2: 0x104e162778613cc2,
        },
        w2: u288 {
            limb0: 0x30861f52bd32ba97efd55257,
            limb1: 0x62eedea9af7db506331322d1,
            limb2: 0x2f102314940d894f,
        },
        w3: u288 {
            limb0: 0x90569684b9b23d784f0c7e4a,
            limb1: 0x1d8c900dcf4c698306b6c297,
            limb2: 0xa184f91f94cf4bb,
        },
        w4: u288 {
            limb0: 0x7331a4ecd5ca392b6820c3ff,
            limb1: 0xdac519b27eedc4ffba72360c,
            limb2: 0x100643d617ca5008,
        },
        w5: u288 {
            limb0: 0xbbd1d0aabf550cfa6b7637a0,
            limb1: 0x383bceaa452cd2d0c27563c0,
            limb2: 0x2552cfc26edb01f0,
        },
        w6: u288 {
            limb0: 0x5762aba6671c236c98833d46,
            limb1: 0x34123b252155685c5e382eab,
            limb2: 0x106140e1c0635ca,
        },
        w7: u288 {
            limb0: 0x6d556546e02a0739b3503086,
            limb1: 0x1412f34363259e42fa4f2af6,
            limb2: 0xef7bb97b1d3c860,
        },
        w8: u288 {
            limb0: 0x5656069ffd5a8a03337573c4,
            limb1: 0x12f5dc78f920dc14c238d037,
            limb2: 0x20855c9a53b43f9c,
        },
        w9: u288 {
            limb0: 0xaecc42c2f2649428757a4e56,
            limb1: 0x14cd707fb35440b4a7b7545a,
            limb2: 0x6ba40dea04e4205,
        },
        w10: u288 {
            limb0: 0xe8eec114cbd67df574c1237f,
            limb1: 0xb167b99aca56df2f50b01867,
            limb2: 0x15c9d84d824f4c9d,
        },
        w11: u288 {
            limb0: 0xd5ae11616ee9abd3e6aa75aa,
            limb1: 0xb59c597ff181d46e45a1166f,
            limb2: 0x96062e947597a94,
        },
    },
    gamma_g2: G2Point {
        x0: u384 {
            limb0: 0xf75edadd46debd5cd992f6ed,
            limb1: 0x426a00665e5c4479674322d4,
            limb2: 0x1800deef121f1e76,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x35a9e71297e485b7aef312c2,
            limb1: 0x7260bfb731fb5d25f1aa4933,
            limb2: 0x198e9393920d483a,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0xc43d37b4ce6cc0166fa7daa,
            limb1: 0x4aab71808dcb408fe3d1e769,
            limb2: 0x12c85ea5db8c6deb,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0x70b38ef355acdadcd122975b,
            limb1: 0xec9e99ad690c3395bc4b3133,
            limb2: 0x90689d0585ff075,
            limb3: 0x0,
        },
    },
    delta_g2: G2Point {
        x0: u384 {
            limb0: 0xf92175dbcee1e70a16e1e897,
            limb1: 0x423f45e26c21042d1726d621,
            limb2: 0x120da74abc1fc824,
            limb3: 0x0,
        },
        x1: u384 {
            limb0: 0x36aad9cab0cf93d14f23ad22,
            limb1: 0x1a545f53f63eb7fe936f16cf,
            limb2: 0x27df679219e0fb2,
            limb3: 0x0,
        },
        y0: u384 {
            limb0: 0x2273374550ee1a6dfea1b715,
            limb1: 0xd3535ae9d5a0166757c8080f,
            limb2: 0x2c9d3ebce1fb3805,
            limb3: 0x0,
        },
        y1: u384 {
            limb0: 0xef3e966a0082d8926c9ed143,
            limb1: 0x543ddefa4e8e008d6de03913,
            limb2: 0x217243201f8a21d4,
            limb3: 0x0,
        },
    },
};

pub const ic: [G1Point; 8] = [
    G1Point {
        x: u384 {
            limb0: 0xcc937581039892d6e428bb2a,
            limb1: 0x33f282cad4784cc903ef0cab,
            limb2: 0xfac6e3765c61aa6,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xe9780d7d5d1054b81e8528ea,
            limb1: 0xe41a49eb633516c834d82ee7,
            limb2: 0x22bf1330177eb584,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xaba29b030de7bf83d9e33b77,
            limb1: 0x180fec05589a35b00e7fef0d,
            limb2: 0x21e1dbc6bd6a9d46,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x84b1413331bb628c3309d74f,
            limb1: 0x5527ee30a45d65932985450c,
            limb2: 0x91fe0b66e0ce6f9,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xd78125d54c260fdb2976d90e,
            limb1: 0x558eff99accc7ec29cb903e1,
            limb2: 0x5f3efe2471d793a,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x139e1d77b590a99f22a2c3d5,
            limb1: 0x2f4c2b2d77623d9b97092da,
            limb2: 0x22acb7910cfb233f,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x3e92a41e751f9ad9fae305ad,
            limb1: 0x99ac7778fbfdf5ab91c2ef2f,
            limb2: 0x6aefae11abf1d45,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0xa0451d9816403e191d3b570f,
            limb1: 0x99d3e87f1609f575d737f8db,
            limb2: 0x254cd49252b06706,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x56e85c52d70dafda9ffc6c43,
            limb1: 0xcb17033ed6d010be18069e32,
            limb2: 0x27bd1138caeb62e4,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x6434c80ef1d52dda6c795715,
            limb1: 0x4dfbf07ac11b36bd3612df01,
            limb2: 0x2d0e217487f152a9,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x5303ca3e9f7ed69ee8dbbfe1,
            limb1: 0x66d12a93fb71bafa70be9ca6,
            limb2: 0x1ac616002adb5cb5,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x18facf1bd051dbac04cf08e9,
            limb1: 0x7a90f0a6456faa35fc58d56c,
            limb2: 0xe4451cde955b08b,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0xe15019c66704195527d7b3e6,
            limb1: 0x8043ac93b5326ecdf2444e50,
            limb2: 0x105bc1d4ec6e53fa,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x733c69615fc1b14597c8a49b,
            limb1: 0xdf43b83840d9ac46a01e06cf,
            limb2: 0x2516d225fb402e95,
            limb3: 0x0,
        },
    },
    G1Point {
        x: u384 {
            limb0: 0x89f3dd380251360aea09c56c,
            limb1: 0x94eadb493ae87b8e2beb3f92,
            limb2: 0xaa1053e66f5a8b9,
            limb3: 0x0,
        },
        y: u384 {
            limb0: 0x48171f18c56ca4456b12cf4e,
            limb1: 0x246766dbfddb4b22e959236e,
            limb2: 0x499aa574d45b030,
            limb3: 0x0,
        },
    },
];


pub const precomputed_lines: [G2Line; 176] = [
    G2Line {
        r0a0: u288 {
            limb0: 0x4d347301094edcbfa224d3d5,
            limb1: 0x98005e68cacde68a193b54e6,
            limb2: 0x237db2935c4432bc,
        },
        r0a1: u288 {
            limb0: 0x6b4ba735fba44e801d415637,
            limb1: 0x707c3ec1809ae9bafafa05dd,
            limb2: 0x124077e14a7d826a,
        },
        r1a0: u288 {
            limb0: 0x49a8dc1dd6e067932b6a7e0d,
            limb1: 0x7676d0000961488f8fbce033,
            limb2: 0x3b7178c857630da,
        },
        r1a1: u288 {
            limb0: 0x98c81278efe1e96b86397652,
            limb1: 0xe3520b9dfa601ead6f0bf9cd,
            limb2: 0x2b17c2b12c26fdd0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x82cf765160a265080d598bc5,
            limb1: 0x624fdcfa3c6c409bf796fba4,
            limb2: 0xe7a8143ca0203d6,
        },
        r0a1: u288 {
            limb0: 0x3872a39fb85fb11220127552,
            limb1: 0xf97248d3f72e6c072367ec55,
            limb2: 0x1aa129ef8838606d,
        },
        r1a0: u288 {
            limb0: 0x24aa0c5ec4388da28b83144c,
            limb1: 0x8f72f61dd74f811e420d7437,
            limb2: 0x1fe10bdd61095fb3,
        },
        r1a1: u288 {
            limb0: 0x2f4697367528d0aef0aec85d,
            limb1: 0xe01523a9f6123d215295e6cb,
            limb2: 0x237a070460304755,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1b3d578c32d1af5736582972,
            limb1: 0x204fe74db6b371d37e4615ab,
            limb2: 0xce69bdf84ed6d6d,
        },
        r0a1: u288 {
            limb0: 0xfd262357407c3d96bb3ba710,
            limb1: 0x47d406f500e66ea29c8764b3,
            limb2: 0x1e23d69196b41dbf,
        },
        r1a0: u288 {
            limb0: 0x1ec8ee6f65402483ad127f3a,
            limb1: 0x41d975b678200fce07c48a5e,
            limb2: 0x2cad36e65bbb6f4f,
        },
        r1a1: u288 {
            limb0: 0xcfa9b8144c3ea2ab524386f5,
            limb1: 0xd4fe3a18872139b0287570c3,
            limb2: 0x54c8bc1b50aa258,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb5ee22ba52a7ed0c533b7173,
            limb1: 0xbfa13123614ecf9c4853249b,
            limb2: 0x6567a7f6972b7bb,
        },
        r0a1: u288 {
            limb0: 0xcf422f26ac76a450359f819e,
            limb1: 0xc42d7517ae6f59453eaf32c7,
            limb2: 0x899cb1e339f7582,
        },
        r1a0: u288 {
            limb0: 0x9f287f4842d688d7afd9cd67,
            limb1: 0x30af75417670de33dfa95eda,
            limb2: 0x1121d4ca1c2cab36,
        },
        r1a1: u288 {
            limb0: 0x7c4c55c27110f2c9a228f7d8,
            limb1: 0x8f14f6c3a2e2c9d74b347bfe,
            limb2: 0x83ef274ba7913a5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe5a2543bdb7e270ecb237182,
            limb1: 0x560068bc451517c19fea6eec,
            limb2: 0x21e9cd2f172f9c53,
        },
        r0a1: u288 {
            limb0: 0x2fff26ed83c0db04b86a87f5,
            limb1: 0xbeddfce28a52ec5674197e3c,
            limb2: 0x15c3248358f93fbb,
        },
        r1a0: u288 {
            limb0: 0x43c7be2e77e7fe744cf9e8fb,
            limb1: 0x28dd4f98aa31d73f5573f65a,
            limb2: 0x1083429580284076,
        },
        r1a1: u288 {
            limb0: 0x392b3356c6f7bb67e7ce34ea,
            limb1: 0xd83b220c8b6f1b3c44eb83c6,
            limb2: 0xcea476e810158d3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd59ae799e98cabb9711fbac,
            limb1: 0xb33c79abb70fcc36c3d4e20d,
            limb2: 0x2b186aad5834f028,
        },
        r0a1: u288 {
            limb0: 0xaf42fe9aea2dfd54b5d8a801,
            limb1: 0x48d7dce9c37e85b7d213baea,
            limb2: 0x2ea54e2ed9d6945c,
        },
        r1a0: u288 {
            limb0: 0x7dc114ad09f926a388a74ed9,
            limb1: 0x7e41bc3c8469c6adef65335c,
            limb2: 0x1763d8e4a2a05e79,
        },
        r1a1: u288 {
            limb0: 0x75c1056af5e6aa9582ed6648,
            limb1: 0x150996086c10252fba1e441a,
            limb2: 0x16073e768289794e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfc23a674d089e9cfdefb1db8,
            limb1: 0x9ddfd61d289b65a9b4254476,
            limb2: 0x1e2f561324ef4447,
        },
        r0a1: u288 {
            limb0: 0xf67a6a9e31f6975b220642ea,
            limb1: 0xccd852893796296e4d1ed330,
            limb2: 0x94ff1987d19b62,
        },
        r1a0: u288 {
            limb0: 0x360c2a5aca59996d24cc1947,
            limb1: 0x66c2d7d0d176a3bc53f386e8,
            limb2: 0x2cfcc62a17fbeecb,
        },
        r1a1: u288 {
            limb0: 0x2ddc73389dd9a9e34168d8a9,
            limb1: 0xae9afc57944748b835cbda0f,
            limb2: 0x12f0a1f8cf564067,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e9cba0c3625d274ab106d50,
            limb1: 0x5965031d29146023ccf79318,
            limb2: 0xb2b3b604abb9994,
        },
        r0a1: u288 {
            limb0: 0xed449275b99a4719e02a4025,
            limb1: 0x85f7bc043ff7afaf9020735c,
            limb2: 0x5adf8dd0ffcfb19,
        },
        r1a0: u288 {
            limb0: 0x408491757d9fdf1fc94e8c27,
            limb1: 0x72e8dc7b2d200cd8dd4a3dc4,
            limb2: 0x21c761fda119a5cf,
        },
        r1a1: u288 {
            limb0: 0x2e7b8a6b9c0da8eefba2a7be,
            limb1: 0x56f1e6938b04cae9012fb210,
            limb2: 0x25b436be3f6852f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9c963c4bdade6ce3d460b077,
            limb1: 0x1738311feefc76f565e34e8a,
            limb2: 0x1aae0d6c9e9888ad,
        },
        r0a1: u288 {
            limb0: 0x9272581fdf80b045c9c3f0a,
            limb1: 0x3946807b0756e87666798edb,
            limb2: 0x2bf6eeda2d8be192,
        },
        r1a0: u288 {
            limb0: 0x3e957661b35995552fb475de,
            limb1: 0xd8076fa48f93f09d8128a2a8,
            limb2: 0xb6f87c3f00a6fcf,
        },
        r1a1: u288 {
            limb0: 0xcf17d6cd2101301246a8f264,
            limb1: 0x514d04ad989b91e697aa5a0e,
            limb2: 0x175f17bbd0ad1219,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x894bc18cc70ca1987e3b8f9f,
            limb1: 0xd4bfa535181f0f8659b063e3,
            limb2: 0x19168d524164f463,
        },
        r0a1: u288 {
            limb0: 0x850ee8d0e9b58b82719a6e92,
            limb1: 0x9fc4eb75cbb027c137d48341,
            limb2: 0x2b2f8a383d944fa0,
        },
        r1a0: u288 {
            limb0: 0x5451c8974a709483c2b07fbd,
            limb1: 0xd7e09837b8a2a3b78e7fe525,
            limb2: 0x347d96be5e7fa31,
        },
        r1a1: u288 {
            limb0: 0x823f2ba2743ee254e4c18a1e,
            limb1: 0x6a61af5db035c443ed0f8172,
            limb2: 0x1e840eee275d1063,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x32889b24c25c36dfe7f0cde5,
            limb1: 0x97a06cb789a327bfd25e336,
            limb2: 0x27ffd40619e92435,
        },
        r0a1: u288 {
            limb0: 0xd479fc44e91b32cc634c5556,
            limb1: 0x44cfca2e105923865510a379,
            limb2: 0x3e360ac16bdfcd2,
        },
        r1a0: u288 {
            limb0: 0x47533129fba25694ea35110c,
            limb1: 0x2dcb89041f0251781e756e9e,
            limb2: 0x2e3d3ee899e6d3a6,
        },
        r1a1: u288 {
            limb0: 0x99e7570167ec54baa6108ca7,
            limb1: 0x99154483b2ebc259906ae7eb,
            limb2: 0x8aefdbf474afd4b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3890b7d2e07c077bb41f25d5,
            limb1: 0x966a3cbd7135c0417799192e,
            limb2: 0xed79f8282ace878,
        },
        r0a1: u288 {
            limb0: 0x89c5e91350d4aa7a2a23f603,
            limb1: 0x113973c8085c178e782a8fcb,
            limb2: 0x10ef510d862f10b9,
        },
        r1a0: u288 {
            limb0: 0xd69734bdfce863b21e06e095,
            limb1: 0xccd77f469ec08812e32a99ca,
            limb2: 0x61b4c6c32b4ad6c,
        },
        r1a1: u288 {
            limb0: 0xd75967fe4ef2e1415402598f,
            limb1: 0xac8ff7747ef3846430ea9ca5,
            limb2: 0x29c0103df6c68ed4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x18d630598e58bb5d0102b30e,
            limb1: 0x9767e27b02a8da37411a2787,
            limb2: 0x100a541662b9cd7c,
        },
        r0a1: u288 {
            limb0: 0x4ca7313df2e168e7e5ea70,
            limb1: 0xd49cce6abd50b574f31c2d72,
            limb2: 0x78a2afbf72317e7,
        },
        r1a0: u288 {
            limb0: 0x6d99388b0a1a67d6b48d87e0,
            limb1: 0x1d8711d321a193be3333bc68,
            limb2: 0x27e76de53a010ce1,
        },
        r1a1: u288 {
            limb0: 0x77341bf4e1605e982fa50abd,
            limb1: 0xc5cf10db170b4feaaf5f8f1b,
            limb2: 0x762adef02274807,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8de1e53e47220507e3092776,
            limb1: 0x737877791d9bb3925dac0a78,
            limb2: 0x13a32e96e7fce996,
        },
        r0a1: u288 {
            limb0: 0xa0536666cd816e275d21ad6b,
            limb1: 0x76136b1ff022802a9e571ed7,
            limb2: 0xe0977b7d13e9ac8,
        },
        r1a0: u288 {
            limb0: 0x15760b4ac3be43d939448a7f,
            limb1: 0xedc96aeecb951da035c20238,
            limb2: 0x2946f1d388c1a07a,
        },
        r1a1: u288 {
            limb0: 0x2e21eac819899978260dfefb,
            limb1: 0xfe908078bc9bd40bee1f2c89,
            limb2: 0x19c15c2b37aec6f4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa137b991ba9048aee9fa0bc7,
            limb1: 0xf5433785c186cd1100ab6b80,
            limb2: 0xab519fd7cf8e7f9,
        },
        r0a1: u288 {
            limb0: 0x90832f45d3398c60aa1a74e2,
            limb1: 0x17f7ac209532723f22a344b,
            limb2: 0x23db979f8481c5f,
        },
        r1a0: u288 {
            limb0: 0x723b0e23c2808a5d1ea6b11d,
            limb1: 0x3030030d26411f84235c3af5,
            limb2: 0x122e78da5509eddb,
        },
        r1a1: u288 {
            limb0: 0xf1718c1e21a9bc3ec822f319,
            limb1: 0xf5ee6dfa3bd3272b2f09f0c7,
            limb2: 0x5a29c1e27616b34,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4c0def7b3936c2c631c53c05,
            limb1: 0xeaade72b859640a9f0fbadd2,
            limb2: 0x1d811ee2ececf7d,
        },
        r0a1: u288 {
            limb0: 0x8620478df0c893b30d58bede,
            limb1: 0x5387214e9d0b37a06fb72b17,
            limb2: 0x28d829739a72981d,
        },
        r1a0: u288 {
            limb0: 0x390ac0bc05dfacfc81e189fc,
            limb1: 0x46cf3060d8c88d64d84e865d,
            limb2: 0x27098c2866f1581c,
        },
        r1a1: u288 {
            limb0: 0xf72f88d42aca1ac7c951619c,
            limb1: 0x7151810e87797c74ed07eb80,
            limb2: 0x22ad75d7724ce782,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbc1ede480873fceb8739511e,
            limb1: 0xd5a60533bd0ce7869efbc15,
            limb2: 0x182c17d793eba74d,
        },
        r0a1: u288 {
            limb0: 0x83bf38d91876ad8999516bc2,
            limb1: 0x7756322ea3dc079289d51f2d,
            limb2: 0x1d0f6156a89a4244,
        },
        r1a0: u288 {
            limb0: 0x6aba652f197be8f99707b88c,
            limb1: 0xbf94286c245794ea0f562f32,
            limb2: 0x25a358967a2ca81d,
        },
        r1a1: u288 {
            limb0: 0xc028cbff48c01433e8b23568,
            limb1: 0xd2e791f5772ed43b056beba1,
            limb2: 0x83eb38dff4960e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e8bae93940838154291f8a0,
            limb1: 0x5b195314fc0c3fd4fa433050,
            limb2: 0x79f1fb560dc23e4,
        },
        r0a1: u288 {
            limb0: 0x8916818fb6cffcbd6c748bf0,
            limb1: 0x29dd9e9f374c37c9231c7e5a,
            limb2: 0x5e6950317324e1b,
        },
        r1a0: u288 {
            limb0: 0x516918a6f62a9613f3b6cb8f,
            limb1: 0xb8e637e4701e5b2cf29fc931,
            limb2: 0xfa608832eaebc4a,
        },
        r1a1: u288 {
            limb0: 0xead0a38955514d2c4adf5238,
            limb1: 0xda67625184aba0b669a292fa,
            limb2: 0x7c564e444f7494e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc2a2b787d8e718e81970db80,
            limb1: 0x5372abeaf56844dee60d6198,
            limb2: 0x131210153a2217d6,
        },
        r0a1: u288 {
            limb0: 0x70421980313e09a8a0e5a82d,
            limb1: 0xf75ca1f68f4b8deafb1d3b48,
            limb2: 0x102113c9b6feb035,
        },
        r1a0: u288 {
            limb0: 0x4654c11d73bda84873de9b86,
            limb1: 0xa67601bca2e595339833191a,
            limb2: 0x1c2b76e439adc8cc,
        },
        r1a1: u288 {
            limb0: 0x9c53a48cc66c1f4d644105f2,
            limb1: 0xa17a18867557d96fb7c2f849,
            limb2: 0x1deb99799bd8b63a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc32026c56341297fa080790c,
            limb1: 0xe23ad2ff283399133533b31f,
            limb2: 0xa6860f5c968f7ad,
        },
        r0a1: u288 {
            limb0: 0x2966cf259dc612c6a4d8957d,
            limb1: 0xfba87ea86054f3db5774a08f,
            limb2: 0xc73408b6a646780,
        },
        r1a0: u288 {
            limb0: 0x6272ce5976d8eeba08f66b48,
            limb1: 0x7dfbd78fa06509604c0cec8d,
            limb2: 0x181ec0eaa6660e45,
        },
        r1a1: u288 {
            limb0: 0x48af37c1a2343555fbf8a357,
            limb1: 0xa7b5e1e20e64d6a9a9ce8e61,
            limb2: 0x1147dcea39a47abd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9344ffeff9ac0c7922d560,
            limb1: 0xcbcdb022a7df50cde1857fdf,
            limb2: 0x53d988e4e5d9f1a,
        },
        r0a1: u288 {
            limb0: 0xb575018475ec3726afde2d9,
            limb1: 0x383a6906aa897fd2be6957a3,
            limb2: 0x5a4ef234fe23b31,
        },
        r1a0: u288 {
            limb0: 0xec8313f5158e41a5f7b5643b,
            limb1: 0xbdbc066d358b899018b8440,
            limb2: 0xd26aff36973e214,
        },
        r1a1: u288 {
            limb0: 0x7eecd2e261ac438f5f1c4810,
            limb1: 0xca4b09446b9a920d8159277d,
            limb2: 0x1d0207b94697e81c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbd05844a1e8d7c8640add97e,
            limb1: 0xe0baaeb668d499816b2fb98c,
            limb2: 0x21504c18bc19fe04,
        },
        r0a1: u288 {
            limb0: 0x4b7d3cc7b1c04bdc8d65cbca,
            limb1: 0xf05f8c454a07455ce5cd80bf,
            limb2: 0xc74c17abfc17191,
        },
        r1a0: u288 {
            limb0: 0x45f84aac1d93925f8b5c8e81,
            limb1: 0xda968152a94a7bcbda2cc145,
            limb2: 0x4ba3d109ab7601f,
        },
        r1a1: u288 {
            limb0: 0x845143340bb9a80fc125c5dc,
            limb1: 0xdaeb721d9017229c04fd4bd7,
            limb2: 0x25c98431d580f878,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4033c51e6e469818521cd2ae,
            limb1: 0xb71a4629a4696b2759f8e19e,
            limb2: 0x4f5744e29c1eb30,
        },
        r0a1: u288 {
            limb0: 0xa4f47bbc60cb0649dca1c772,
            limb1: 0x835f427106f4a6b897c6cf23,
            limb2: 0x17ca6ea4855756bb,
        },
        r1a0: u288 {
            limb0: 0x7f844a35c7eeadf511e67e57,
            limb1: 0x8bb54fb0b3688cac8860f10,
            limb2: 0x1c7258499a6bbebf,
        },
        r1a1: u288 {
            limb0: 0x10d269c1779f96946e518246,
            limb1: 0xce6fcef6676d0dacd395dc1a,
            limb2: 0x2cf4c6ae1b55d87d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xff6d8bd49a7cb046a41c1316,
            limb1: 0xd1b98e33167eff5d9390aa33,
            limb2: 0x25fabae0078b367,
        },
        r0a1: u288 {
            limb0: 0xc16764ae309f7a8579bbcc8e,
            limb1: 0xeabf227da99bd473b95cb2b4,
            limb2: 0x104aa18e1cae7f9a,
        },
        r1a0: u288 {
            limb0: 0x4d6d9dce4e4eaf9b0ae4e2f5,
            limb1: 0xf672a1e65078c1cecfe105a4,
            limb2: 0x278677effa551e3e,
        },
        r1a1: u288 {
            limb0: 0xe4546b2ce4b553476570bdfa,
            limb1: 0xc1e7917b9f861e517957196d,
            limb2: 0x1bcc7dfb29d2781b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xab74a6bae36b17b1d2cc1081,
            limb1: 0x904cf03d9d30b1fe9dc71374,
            limb2: 0x14ffdd55685b7d82,
        },
        r0a1: u288 {
            limb0: 0x277f7180b7cf33feded1583c,
            limb1: 0xc029c3968a75b612303c4298,
            limb2: 0x20ef4ba03605cdc6,
        },
        r1a0: u288 {
            limb0: 0xd5a7a27c1baba3791ab18957,
            limb1: 0x973730213d5d70d3e62d6db,
            limb2: 0x24ca121c566eb857,
        },
        r1a1: u288 {
            limb0: 0x9f4c2dea0492f548ae7d9e93,
            limb1: 0xe584b6b251a5227c70c5188,
            limb2: 0x22bcecac2bd5e51b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x340c82974f7221a53fc2f3ac,
            limb1: 0x7146f18cd591d423874996e7,
            limb2: 0xa6d154791056f46,
        },
        r0a1: u288 {
            limb0: 0x70894ea6418890d53b5ee12a,
            limb1: 0x882290cb53b795b0e7c8c208,
            limb2: 0x1b5777dc18b2899b,
        },
        r1a0: u288 {
            limb0: 0x99a0e528d582006a626206b6,
            limb1: 0xb1cf825d80e199c5c9c795b5,
            limb2: 0x2a97495b032f0542,
        },
        r1a1: u288 {
            limb0: 0xc7cf5b455d6f3ba73debeba5,
            limb1: 0xbb0a01235687223b7b71d0e5,
            limb2: 0x250024ac44c35e3f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x341a39f659fa34bedfc30032,
            limb1: 0x89c26b955dee01a22e47a24c,
            limb2: 0x164ffcd86c1abe0c,
        },
        r0a1: u288 {
            limb0: 0x1f8af64718d042f0b13392e,
            limb1: 0x370fe2dafb66d2472380a254,
            limb2: 0x1495edb593151e12,
        },
        r1a0: u288 {
            limb0: 0x76b9f3ccc1c7018b3728df7c,
            limb1: 0xbbe2e03705d68017f9b454af,
            limb2: 0x18d9b8e268ff141d,
        },
        r1a1: u288 {
            limb0: 0xdb3c3679a5935544d2ea0a43,
            limb1: 0x741185bd98ce4fe4fac4db3a,
            limb2: 0x10ce52e049b361ec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x69bba6a565b5a7e179a14134,
            limb1: 0x7cffad7228ed44755c539ad9,
            limb2: 0x36bcbe9dce39913,
        },
        r0a1: u288 {
            limb0: 0xbff5f3f8b2f62d55ec4972a5,
            limb1: 0x667d5c39e190b5d2e43bf61f,
            limb2: 0x1e3f1e8eae5f6b01,
        },
        r1a0: u288 {
            limb0: 0xf6e36c0d2584bd18c9634830,
            limb1: 0xd5743080697be98fbd21961b,
            limb2: 0x617f82945739997,
        },
        r1a1: u288 {
            limb0: 0xd62719a7cf0468f037126639,
            limb1: 0x95c7cb78a4b55905f3798ef9,
            limb2: 0x37add5ce6f53fe2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xccf841cf5c1cf8f4a0485e28,
            limb1: 0xb5077662d0ce9d755af1446b,
            limb2: 0x2b08658e9d5ba5cb,
        },
        r0a1: u288 {
            limb0: 0x6ce62184a15685babd77f27f,
            limb1: 0x5ff9bb7d74505b0542578299,
            limb2: 0x7244563488bab2,
        },
        r1a0: u288 {
            limb0: 0xec778048d344ac71275d961d,
            limb1: 0x1273984019753000ad890d33,
            limb2: 0x27c2855e60d361bd,
        },
        r1a1: u288 {
            limb0: 0xa7a0071e22af2f3a79a12da,
            limb1: 0xc84a6fd41c20759ff6ff169a,
            limb2: 0x23e7ef2a308e49d1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6576c6063528e00e34d4fa5,
            limb1: 0xa40d7cda712cc7a47a32e207,
            limb2: 0x235921e103d34d79,
        },
        r0a1: u288 {
            limb0: 0xf4f54a482004ce38a5aecfd5,
            limb1: 0x54dced622eab55f1264dc567,
            limb2: 0x9a8e7b17bbcbbc6,
        },
        r1a0: u288 {
            limb0: 0x9cbaa72fc22467bf8ff77fec,
            limb1: 0x55c99714b6b86bc8a3c052f5,
            limb2: 0xdf87e8c2b072db,
        },
        r1a1: u288 {
            limb0: 0x3c400bac36a7e7747f17aa6e,
            limb1: 0xc16fec6b618864783ba4ad2a,
            limb2: 0x1cd5a8256afc4ba8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7105024c431a33683d9d0b9d,
            limb1: 0x12e23637b641ab0e5b322ad8,
            limb2: 0x2918e9e08c764c28,
        },
        r0a1: u288 {
            limb0: 0x26384979d1f5417e451aeabf,
            limb1: 0xacfb499e362291d0b053bbf6,
            limb2: 0x2a6ad1a1f7b04ef6,
        },
        r1a0: u288 {
            limb0: 0xba4db515be70c384080fc9f9,
            limb1: 0x5a983a6afa9cb830fa5b66e6,
            limb2: 0x8cc1fa494726a0c,
        },
        r1a1: u288 {
            limb0: 0x59c9af9399ed004284eb6105,
            limb1: 0xef37f66b058b4c971d9c96b0,
            limb2: 0x2c1839afde65bafa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x433fb429cd943f2d294de283,
            limb1: 0x7dec9afcfcbbd383ba8cfe55,
            limb2: 0xa4cd19c89de2625,
        },
        r0a1: u288 {
            limb0: 0x5ac6006dfb071e510ba97d0f,
            limb1: 0x18a2ae0ee22118effdd9672b,
            limb2: 0x4c13d0f8b251efc,
        },
        r1a0: u288 {
            limb0: 0xcd32b2b75d3218dcbb422,
            limb1: 0xf9822a59986afac7d3fcd84c,
            limb2: 0x2efdfcc6edcfdfd,
        },
        r1a1: u288 {
            limb0: 0x779e029c4ca6170ca55d2bdf,
            limb1: 0xdfb151dcdbff4c94a3714ac9,
            limb2: 0x2da1a1737501a32b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6bf13a27b0f4eb6657abc4b,
            limb1: 0xf78d57f089bffdf07c676bb3,
            limb2: 0x228e4aefbdd738df,
        },
        r0a1: u288 {
            limb0: 0x4f41a40b04ec964619823053,
            limb1: 0xfa3fb44f4a80641a9bb3bc09,
            limb2: 0x29bf29a3d071ec4b,
        },
        r1a0: u288 {
            limb0: 0x83823dcdff02bdc8a0e6aa03,
            limb1: 0x79ac92f113de29251cd73a98,
            limb2: 0x1ccdb791718d144,
        },
        r1a1: u288 {
            limb0: 0xa074add9d066db9a2a6046b6,
            limb1: 0xef3a70034497456c7d001a5,
            limb2: 0x27d09562d815b4a6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2d7a34c0a12e92bbddd4faf9,
            limb1: 0x9fe084384d32523764e22bc,
            limb2: 0x2e66dd1313172725,
        },
        r0a1: u288 {
            limb0: 0x3539750e264b72b968781088,
            limb1: 0x4064c1a2689c13ff46eed30b,
            limb2: 0xdf130c51f62d537,
        },
        r1a0: u288 {
            limb0: 0xdd43d8b130ecc4b2f78e5ba9,
            limb1: 0xd308d2b984f3e6ee8777b1f3,
            limb2: 0xd1c46d3a3ddacb2,
        },
        r1a1: u288 {
            limb0: 0xe9c357f84657053a8389b78e,
            limb1: 0xc08329dc609245c883d45334,
            limb2: 0x9f5f884d3292e0f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x87a44d343cc761056f4f2eae,
            limb1: 0x18016f16818253360d2c8adf,
            limb2: 0x1bcd5c6e597d735e,
        },
        r0a1: u288 {
            limb0: 0x593d7444c376f6d69289660b,
            limb1: 0x1d6d97020b59cf2e4b38be4f,
            limb2: 0x17133b62617f63a7,
        },
        r1a0: u288 {
            limb0: 0x88cac99869bb335ec9553a70,
            limb1: 0x95bcfa7f7c0b708b4d737afc,
            limb2: 0x1eec79b9db274c09,
        },
        r1a1: u288 {
            limb0: 0xe465a53e9fe085eb58a6be75,
            limb1: 0x868e45cc13e7fd9d34e11839,
            limb2: 0x2b401ce0f05ee6bb,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x83f48fbac5c1b94486c2d037,
            limb1: 0xf95d9333449543de78c69e75,
            limb2: 0x7bca8163e842be7,
        },
        r0a1: u288 {
            limb0: 0x60157b2ff6e4d737e2dac26b,
            limb1: 0x30ab91893fcf39d9dcf1b89,
            limb2: 0x29a58a02490d7f53,
        },
        r1a0: u288 {
            limb0: 0x520f9cb580066bcf2ce872db,
            limb1: 0x24a6e42c185fd36abb66c4ba,
            limb2: 0x309b07583317a13,
        },
        r1a1: u288 {
            limb0: 0x5a4c61efaa3d09a652c72471,
            limb1: 0xfcb2676d6aa28ca318519d2,
            limb2: 0x1405483699afa209,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x24478ab8e68d4563a13b6b63,
            limb1: 0x60ceade0028f1485392fb07c,
            limb2: 0x767008f8f84aed3,
        },
        r0a1: u288 {
            limb0: 0x604e24d9466e9f1bb61ac3ef,
            limb1: 0xb797bd8b1ec48fa3e6329166,
            limb2: 0x504b4ac24160a34,
        },
        r1a0: u288 {
            limb0: 0xe15f23920b23a23d522b41ca,
            limb1: 0x4a54ca5f1112dc3b033a3c11,
            limb2: 0x2f0edfb9abd47ba0,
        },
        r1a1: u288 {
            limb0: 0xee9814694962f03e1ff1e8f9,
            limb1: 0x904162a33fcc07551976e13a,
            limb2: 0x2e3583dc4c123127,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x238c8763747571c32900dbb9,
            limb1: 0x8b58b3fa008e8c38b327ed2a,
            limb2: 0x139d08910aac5eff,
        },
        r0a1: u288 {
            limb0: 0x6204516e23523da54cd7fc35,
            limb1: 0x36b59f039115fd290fff1532,
            limb2: 0x1d40814726fb8a67,
        },
        r1a0: u288 {
            limb0: 0xd020df69cdd11d585e0bcd92,
            limb1: 0xdb3de14b2c620f8897c9682d,
            limb2: 0x2c75421a3a0abaa6,
        },
        r1a1: u288 {
            limb0: 0x7a5bae96f7d8f24686a85b4,
            limb1: 0x3df1fafddb9c6e1af79110ed,
            limb2: 0x2471668711da6bf6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbfdfdae86101e29da3e869b8,
            limb1: 0xf969a9b961a28b872e56aac2,
            limb2: 0x1afdc719440d90f0,
        },
        r0a1: u288 {
            limb0: 0xee43c995686f13baa9b07266,
            limb1: 0xbfa387a694c641cceee4443a,
            limb2: 0x104d8c02eb7f60c8,
        },
        r1a0: u288 {
            limb0: 0x8d451602b3593e798aecd7fb,
            limb1: 0x69ffbefe7c5ac2cf68e8691e,
            limb2: 0x2ea064a1bc373d28,
        },
        r1a1: u288 {
            limb0: 0x6e7a663073bfe88a2b02326f,
            limb1: 0x5faadb36847ca0103793fa4a,
            limb2: 0x26c09a8ec9303836,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f718b6f7af369453e90d7d0,
            limb1: 0xa2a4bf9e46940947188f59a,
            limb2: 0x1f689d1789e1a9ad,
        },
        r0a1: u288 {
            limb0: 0x339f4fdae1a6a798df504095,
            limb1: 0xb1c25403cfa9ba7e5dbf5c51,
            limb2: 0x36e5aed12eea9ef,
        },
        r1a0: u288 {
            limb0: 0x21c52699f322af378aa5370,
            limb1: 0x267a17aa9d03b924f51439f4,
            limb2: 0x37042948ddbeb02,
        },
        r1a1: u288 {
            limb0: 0x2d72d07254b6537feb3c836f,
            limb1: 0x558dd5034ffb96038bfc0328,
            limb2: 0x2d95533c79a5e277,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d038747ebac16adc1c50bdd,
            limb1: 0xe3706a783e99f73ac742aa1a,
            limb2: 0x17eac23b00b545ff,
        },
        r0a1: u288 {
            limb0: 0xdc25ff0bd02abcbe502c4e37,
            limb1: 0x39b92e6ebb65e5f2d8504f90,
            limb2: 0x2415b5f61301dff6,
        },
        r1a0: u288 {
            limb0: 0x9cdcb2146d15f37900db82ac,
            limb1: 0x96c3940e2f5c5f8198fadee3,
            limb2: 0x2f662ea79b473fc2,
        },
        r1a1: u288 {
            limb0: 0xc0fb95686de65e504ed4c57a,
            limb1: 0xec396c7c4275d4e493b00713,
            limb2: 0x106d2aab8d90d517,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x44a17b7680ea5a20c01e69b0,
            limb1: 0x41a7737749c4d169402e778b,
            limb2: 0x2f7bd76fbdf85ec7,
        },
        r0a1: u288 {
            limb0: 0x66ae1d9f61a1cde4cc29275b,
            limb1: 0x516f127cf4b3bb7c88d7a31f,
            limb2: 0xae85b4bd1e896d4,
        },
        r1a0: u288 {
            limb0: 0x402eeaba0ca00dde5b2225f2,
            limb1: 0x5e489a8701e3d6c0d07c9f73,
            limb2: 0x12b71c14d7b1823c,
        },
        r1a1: u288 {
            limb0: 0xc7132b826310e78415d44f55,
            limb1: 0x7fe75db8f3f9c8b5673c379c,
            limb2: 0x2ad6b3e03e30d01,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49bbb4d856921e3177c0b5bf,
            limb1: 0x76d84d273694e662bdd5d364,
            limb2: 0xea5dc611bdd369d,
        },
        r0a1: u288 {
            limb0: 0x9e9fc3adc530fa3c5c6fd7fe,
            limb1: 0x114bb0c0e8bd247da41b3883,
            limb2: 0x6044124f85d2ce,
        },
        r1a0: u288 {
            limb0: 0xa6e604cdb4e40982a97c084,
            limb1: 0xef485caa56c7820be2f6b11d,
            limb2: 0x280de6387dcbabe1,
        },
        r1a1: u288 {
            limb0: 0xcaceaf6df5ca9f8a18bf2e1e,
            limb1: 0xc5cce932cc6818b53136c142,
            limb2: 0x12f1cd688682030c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x37497c23dcf629df58a5fa12,
            limb1: 0x4fcd5534ae47bded76245ac9,
            limb2: 0x1715ab081e32ac95,
        },
        r0a1: u288 {
            limb0: 0x856275471989e2c288e3c83,
            limb1: 0xb42d81a575b89b127a7821a,
            limb2: 0x5fa75a0e4ae3118,
        },
        r1a0: u288 {
            limb0: 0xeb22351e8cd345c23c0a3fef,
            limb1: 0x271feb16d4b47d2267ac9d57,
            limb2: 0x258f9950b9a2dee5,
        },
        r1a1: u288 {
            limb0: 0xb5f75468922dc025ba7916fa,
            limb1: 0x7e24515de90edf1bde4edd9,
            limb2: 0x289145b3512d4d81,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1e8383ba4fe854acd43b8ca9,
            limb1: 0xff1cb4a87e5ef6587d2cf7,
            limb2: 0x2143de5f22ba8ef4,
        },
        r0a1: u288 {
            limb0: 0x361d4b5e4140d8157cb65e54,
            limb1: 0xe7b1b5374113bdd4c2839704,
            limb2: 0x1b84adb46b4aaf2e,
        },
        r1a0: u288 {
            limb0: 0x72b5078e4b39196005c42f27,
            limb1: 0x27964e1f2267351775f8b985,
            limb2: 0x29d258f55109e884,
        },
        r1a1: u288 {
            limb0: 0xeabf7c36788a1f4a091aaa7c,
            limb1: 0x1cc86c2d0aaa1a142cfaa96c,
            limb2: 0x22d7b7c2eebdf38a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb73342e31fc772772ad5af75,
            limb1: 0x7fcb2e39e77cead11b2a45c6,
            limb2: 0x296ec00d24e32190,
        },
        r0a1: u288 {
            limb0: 0x219481fbfcf82877bfce4f52,
            limb1: 0x90068bea068f2265b7d4babf,
            limb2: 0x191e380c91bf9ab2,
        },
        r1a0: u288 {
            limb0: 0x6e42aca1791c129b6d6cde3,
            limb1: 0x43c5ff2f71529a4f98d48289,
            limb2: 0x1c00480e4e9cb3b4,
        },
        r1a1: u288 {
            limb0: 0x8a39640c77ace1c99df90164,
            limb1: 0x6216af5ac8a7b4ac4796af56,
            limb2: 0x7fe562e1fa40265,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b7b32bcc3119c64a62a8de,
            limb1: 0xe07184496f17bbd59a4b7bbd,
            limb2: 0x1708c536fd78b531,
        },
        r0a1: u288 {
            limb0: 0xfa85b5778c77166c1523a75e,
            limb1: 0x89a00c53309a9e525bef171a,
            limb2: 0x2d2287dd024e421,
        },
        r1a0: u288 {
            limb0: 0x31fd0884eaf2208bf8831e72,
            limb1: 0x537e04ea344beb57ee645026,
            limb2: 0x23c7f99715257261,
        },
        r1a1: u288 {
            limb0: 0x8c38b3aeea525f3c2d2fdc22,
            limb1: 0xf838a99d9ec8ed6dcec6a2a8,
            limb2: 0x2973d5159ddc479a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3f058d8c63fd905d3ca29b42,
            limb1: 0x1f0a90982cc68e4ddcd83e57,
            limb2: 0x240aeaae0783fbfa,
        },
        r0a1: u288 {
            limb0: 0xedfee81d80da310fdf0d0d8,
            limb1: 0xc2208e6de8806cf491bd74d4,
            limb2: 0xb7318be62a476af,
        },
        r1a0: u288 {
            limb0: 0x3c6920c8a24454c634f388fe,
            limb1: 0x23328a006312a722ae09548b,
            limb2: 0x1d2f1c58b80432e2,
        },
        r1a1: u288 {
            limb0: 0xb72980574f7a877586de3a63,
            limb1: 0xcd773b87ef4a29c16784c5ae,
            limb2: 0x1f812c7e22f339c5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2f425b43fd40165f918f2d22,
            limb1: 0x2a4c61c0e1c1875695fed21d,
            limb2: 0x15785f1320f4590,
        },
        r0a1: u288 {
            limb0: 0x6181569b77584255b42b8770,
            limb1: 0xf2eef1b7b6f4645b61125891,
            limb2: 0x2c5d27b53e89793a,
        },
        r1a0: u288 {
            limb0: 0x7548b12f0fbd403882593fab,
            limb1: 0xd0f43c2795dce11dc11c3546,
            limb2: 0x14534b015a1b5cd9,
        },
        r1a1: u288 {
            limb0: 0xf7a9721bae41aaefb0243242,
            limb1: 0x2353c7519a8853c29453dd89,
            limb2: 0x1303f704a9142c16,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe5f2fab54b6a718ba038b160,
            limb1: 0xaeeb7434ff4f03bec570c519,
            limb2: 0x12bd735976a9c37e,
        },
        r0a1: u288 {
            limb0: 0x42cc1d8426b23a6767b31742,
            limb1: 0x8da52d4a211c4c817b81c851,
            limb2: 0x122494dc303b1b6b,
        },
        r1a0: u288 {
            limb0: 0xf3f382ef05d66b6d4664013c,
            limb1: 0xfc23440e2d80af20ee1a0080,
            limb2: 0x121fc17e63129d83,
        },
        r1a1: u288 {
            limb0: 0x7725c935cd9590df441b626f,
            limb1: 0xb9f6da2ebe14cd471d1a4b25,
            limb2: 0x1f7420d1ebca65e3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfeebe92941f95b6ea1d095bb,
            limb1: 0x9c7962eb8bbeb95a9ca7cf50,
            limb2: 0x290bdaf3b9a08dc3,
        },
        r0a1: u288 {
            limb0: 0x686cfa11c9d4b93675495599,
            limb1: 0xb1d69e17b4b5ebf64f0d51e1,
            limb2: 0x2c18bb4bdc2e9567,
        },
        r1a0: u288 {
            limb0: 0x17419b0f6a04bfc98d71527,
            limb1: 0x80eba6ff02787e3de964a4d1,
            limb2: 0x26087bb100e7ff9f,
        },
        r1a1: u288 {
            limb0: 0x17c4ee42c3f612c43a08f689,
            limb1: 0x7276bdda2df6d51a291dba69,
            limb2: 0x40a7220ddb393e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3d44a2e986fd7085dd38a171,
            limb1: 0x8e21002fa49243c5f81d3676,
            limb2: 0x2cc3f22798c4e8e,
        },
        r0a1: u288 {
            limb0: 0x823e767c4dc85b34c194c7f8,
            limb1: 0x1745f104ac8a38cc4b6fe80,
            limb2: 0xdccb2e428eee2fc,
        },
        r1a0: u288 {
            limb0: 0x4e30931f8772c45d327ae578,
            limb1: 0xd9a6082678ab7fc8ef3ad643,
            limb2: 0x10e22a5d279e052f,
        },
        r1a1: u288 {
            limb0: 0xc6c1c47a00ba1ac79f55c5b9,
            limb1: 0x595f3d52e5c4ecd5c29ced42,
            limb2: 0x758e03fbfe992c3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x830d777c19040571a1d72fd0,
            limb1: 0x651b2c6b8c292020817a633f,
            limb2: 0x268af1e285bc59ff,
        },
        r0a1: u288 {
            limb0: 0xede78baa381c5bce077f443d,
            limb1: 0x540ff96bae21cd8b9ae5438b,
            limb2: 0x12a1fa7e3b369242,
        },
        r1a0: u288 {
            limb0: 0x797c0608e5a535d8736d4bc5,
            limb1: 0x375faf00f1147656b7c1075f,
            limb2: 0xda60fab2dc5a639,
        },
        r1a1: u288 {
            limb0: 0x610d26085cfbebdb30ce476e,
            limb1: 0x5bc55890ff076827a09e8444,
            limb2: 0x14272ee2d25f20b7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4afeb4aff015e2fa60d4cb1b,
            limb1: 0xabaa45d56014d982082bfb2d,
            limb2: 0x2eb2e01c49afd8c,
        },
        r0a1: u288 {
            limb0: 0xd29717789bbfe76f5e60545b,
            limb1: 0x69062b6f2a7f1922410393d1,
            limb2: 0x299a56e10ccfdc35,
        },
        r1a0: u288 {
            limb0: 0x4e981dfaa3074bd373894cbe,
            limb1: 0x32f64b3a0862dfc59162fccb,
            limb2: 0x256516b6e47e2abc,
        },
        r1a1: u288 {
            limb0: 0xe6738d222766793b86d92b19,
            limb1: 0xf2de1394e17f932186a3e5de,
            limb2: 0x90a01cfadfb02fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd6862e1a4ca3b2baf6f8d8aa,
            limb1: 0x96f9066dded3a3d899025af4,
            limb2: 0x1a98af9f0d48fd3,
        },
        r0a1: u288 {
            limb0: 0x276b417cc61ea259c114314e,
            limb1: 0x464399e5e0037b159866b246,
            limb2: 0x12cc97dcf32896b5,
        },
        r1a0: u288 {
            limb0: 0xef72647f4c2d08fc038c4377,
            limb1: 0x34883cea19be9a490a93cf2b,
            limb2: 0x10d01394daa61ed0,
        },
        r1a1: u288 {
            limb0: 0xdf345239ece3acaa62919643,
            limb1: 0x914780908ece64e763cca062,
            limb2: 0xee2a80dbd2012a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1d5a31f4d08a0ebf7e071e00,
            limb1: 0xcd1244dd95dd30005f531f81,
            limb2: 0xb4cb469a2dcf4f1,
        },
        r0a1: u288 {
            limb0: 0x7c5938adaf38b355092de1f1,
            limb1: 0x292ab08995b293abfcba14b,
            limb2: 0x1fd126a2b9f37c67,
        },
        r1a0: u288 {
            limb0: 0x6e9d352b02a7cb771fcc33f9,
            limb1: 0x7754d8536eefda2025a07340,
            limb2: 0x1840289291c35a72,
        },
        r1a1: u288 {
            limb0: 0xe85f465417b7bd758c547b2e,
            limb1: 0xf7f703c3bc55ff8a01fa9365,
            limb2: 0xfa301227880a841,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x95b35f83f99272ccd9496ba0,
            limb1: 0x4b511784617a85aaecc179d,
            limb2: 0xc28df1eaa0dca41,
        },
        r0a1: u288 {
            limb0: 0x3fea79698985cd34b171fdf4,
            limb1: 0xf54d0c230f29a3f6c54dcc72,
            limb2: 0x24703e5a68afbed7,
        },
        r1a0: u288 {
            limb0: 0x165e30be02e9fcc6b2965fd4,
            limb1: 0x4d93d9add5acca3eb95937ae,
            limb2: 0x4fa5829f8f6630b,
        },
        r1a1: u288 {
            limb0: 0xc0b98a1f2d647c13f56853f6,
            limb1: 0xe9ba4af4384883b2aa4d007a,
            limb2: 0x26bb6982012773db,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x52d91e3bca2a4167511fa632,
            limb1: 0x19e090a1e5c56dc75fcaf76d,
            limb2: 0xf4a7e475595d3a7,
        },
        r0a1: u288 {
            limb0: 0xb7ac2d8ba2a40e8bc4ffc9e9,
            limb1: 0x51db5821689bf6657bc53a3e,
            limb2: 0x207a50543619e15,
        },
        r1a0: u288 {
            limb0: 0x9a7535db483f456805743bd6,
            limb1: 0x1051e9ba157700f355b2e72c,
            limb2: 0x8866dede64bcfa5,
        },
        r1a1: u288 {
            limb0: 0x19934a3f23591d341da6a7fc,
            limb1: 0x7d139f25cdb3816e21e30300,
            limb2: 0xa106a268a2ee5b6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa4058149e82ea51362b79be4,
            limb1: 0x734eba2621918a820ae44684,
            limb2: 0x110a314a02272b1,
        },
        r0a1: u288 {
            limb0: 0xe2b43963ef5055df3c249613,
            limb1: 0x409c246f762c0126a1b3b7b7,
            limb2: 0x19aa27f34ab03585,
        },
        r1a0: u288 {
            limb0: 0x179aad5f620193f228031d62,
            limb1: 0x6ba32299b05f31b099a3ef0d,
            limb2: 0x157724be2a0a651f,
        },
        r1a1: u288 {
            limb0: 0xa33b28d9a50300e4bbc99137,
            limb1: 0x262a51847049d9b4d8cea297,
            limb2: 0x189acb4571d50692,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa0e0975200fb9f65116c6f9b,
            limb1: 0x4b3f19376635457ada0abf58,
            limb2: 0xc2a68aad02c6372,
        },
        r0a1: u288 {
            limb0: 0x9acdf6c837b4633b1548fe1,
            limb1: 0x877143aa03a1ab86a968d4e,
            limb2: 0x1bda6934ccc9089d,
        },
        r1a0: u288 {
            limb0: 0xe80d228a30411f4016941fba,
            limb1: 0xe9c081b0c237c6ae47511678,
            limb2: 0x16961c5dc1ce0b67,
        },
        r1a1: u288 {
            limb0: 0xbeeb1ccab4666bb0782997b3,
            limb1: 0xe2939fb7af1a83c1d243e42f,
            limb2: 0x2015129b3ad5a8d4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x29bd4381ae4afc677ee37ed6,
            limb1: 0x29ed43453f9a008d9176f004,
            limb2: 0x24134eb915104f43,
        },
        r0a1: u288 {
            limb0: 0x81597f82bb67e90a3e72bdd2,
            limb1: 0xab3bbde5f7bbb4df6a6b5c19,
            limb2: 0x19ac61eea40a367c,
        },
        r1a0: u288 {
            limb0: 0xe30a79342fb3199651aee2fa,
            limb1: 0xf500f028a73ab7b7db0104a3,
            limb2: 0x808b50e0ecb5e4d,
        },
        r1a1: u288 {
            limb0: 0x55f2818453c31d942444d9d6,
            limb1: 0xf6dd80c71ab6e893f2cf48db,
            limb2: 0x13c3ac4488abd138,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x74d52f62c00535961ca2487a,
            limb1: 0xe8c1fc93f66770e2d53306b6,
            limb2: 0xefb85ad69dd5a0d,
        },
        r0a1: u288 {
            limb0: 0x69bdce194e918c4a16df8f85,
            limb1: 0xbf64e61651128b8b81d392dd,
            limb2: 0x2fd04023a74bf2f2,
        },
        r1a0: u288 {
            limb0: 0x9f60e012b716beea188d0949,
            limb1: 0x228f43291176ed25c76a94fa,
            limb2: 0x15a88dad28f2495a,
        },
        r1a1: u288 {
            limb0: 0xbf5ab26febdbb0ed60adf886,
            limb1: 0x8016dd344eb96d05e29e053a,
            limb2: 0x2743821f50cd0fb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1464269bbeafa546f559b8f,
            limb1: 0xab7f7dcd1ac32b86979471cf,
            limb2: 0x6a38256ee96f113,
        },
        r0a1: u288 {
            limb0: 0xf14d50984e65f9bc41df4e7e,
            limb1: 0x350aff9be6f9652ad441a3ad,
            limb2: 0x1b1e60534b0a6aba,
        },
        r1a0: u288 {
            limb0: 0x9e98507da6cc50a56f023849,
            limb1: 0xcf8925e03f2bb5c1ba0962dd,
            limb2: 0x2b18961810a62f87,
        },
        r1a1: u288 {
            limb0: 0x3a4c61b937d4573e3f2da299,
            limb1: 0x6f4c6c13fd90f4edc322796f,
            limb2: 0x13f4e99b6a2f025e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2758b236c11dbd27717bc76,
            limb1: 0xe562accb61c618b509ffe036,
            limb2: 0x16c354817b06d5d9,
        },
        r0a1: u288 {
            limb0: 0x897c581961df2d2e9971120a,
            limb1: 0xd8ee29601ee071a23cc243,
            limb2: 0x2352676306865fb0,
        },
        r1a0: u288 {
            limb0: 0xb88d774c0a6477ed18188ddc,
            limb1: 0xc2a2f1466b45bc78f4edb555,
            limb2: 0x295dbc322d3d8ef,
        },
        r1a1: u288 {
            limb0: 0x6589b9334de5647561e9c3c9,
            limb1: 0xa50381db2fd7453c72fdc68f,
            limb2: 0x1e8b61976601aa04,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe0115a79120ae892a72f3dcb,
            limb1: 0xec67b5fc9ea414a4020135f,
            limb2: 0x1ee364e12321904a,
        },
        r0a1: u288 {
            limb0: 0xa74d09666f9429c1f2041cd9,
            limb1: 0x57ffe0951f863dd0c1c2e97a,
            limb2: 0x154877b2d1908995,
        },
        r1a0: u288 {
            limb0: 0xcbe5e4d2d2c91cdd4ccca0,
            limb1: 0xe6acea145563a04b2821d120,
            limb2: 0x18213221f2937afb,
        },
        r1a1: u288 {
            limb0: 0xfe20afa6f6ddeb2cb768a5ae,
            limb1: 0x1a3b509131945337c3568fcf,
            limb2: 0x127b5788263a927e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd9f8724c7056d875592100c9,
            limb1: 0x92f31ff24562c4d387adde82,
            limb2: 0x8a344716f1cf32f,
        },
        r0a1: u288 {
            limb0: 0x69d0cd4b7dad79b2c6a0983d,
            limb1: 0x5c91587d2a7719ab18404617,
            limb2: 0x25bf91c6e2eb1a34,
        },
        r1a0: u288 {
            limb0: 0x109167a449c637d297308c4e,
            limb1: 0x864bab4d6d885a0c74ad50dc,
            limb2: 0x24b49496313810cc,
        },
        r1a1: u288 {
            limb0: 0x6fb66b9a2d7dc3b34df744a8,
            limb1: 0xae985ee08282b7d217328496,
            limb2: 0x16b445b5522553e4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe7c658aecdab4db3c83f7927,
            limb1: 0xfbf162264ca04ee50c70bde8,
            limb2: 0x2a20f4565b7ff885,
        },
        r0a1: u288 {
            limb0: 0x45b1c2f0a1226361f42683c0,
            limb1: 0x9acdd892c48c08de047296bc,
            limb2: 0x27836373108925d4,
        },
        r1a0: u288 {
            limb0: 0xc0ea9294b345e6d4892676a7,
            limb1: 0xcba74eca77086af245d1606e,
            limb2: 0xf20edac89053e72,
        },
        r1a1: u288 {
            limb0: 0x4c92a28f2779a527a68a938c,
            limb1: 0x3a1c3c55ff9d20eac109fab3,
            limb2: 0x21c4a8c524b1ee7d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd966192e2391057d4b0e7777,
            limb1: 0xc3f99b7eb5fbb82d4b982745,
            limb2: 0xe8385459e30236b,
        },
        r0a1: u288 {
            limb0: 0x8b6c869f7c04515ef2bf163b,
            limb1: 0xaf7510a3ddd4c6c770141649,
            limb2: 0x1613068e50e565df,
        },
        r1a0: u288 {
            limb0: 0xdd6455c3771c08de3e602f37,
            limb1: 0x419acc78cceb6c5bf3d90fbd,
            limb2: 0x204afb738a55dba9,
        },
        r1a1: u288 {
            limb0: 0x5cde3922062a87064b60a15a,
            limb1: 0xed85cb6c3a13aa23db921697,
            limb2: 0xa853d91f351edc9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa68021d593c46246af22559e,
            limb1: 0x5c2cfc5bc4cd1b48f4704134,
            limb2: 0x296066ede1298f8c,
        },
        r0a1: u288 {
            limb0: 0xfe17dd6765eb9b9625eb6a84,
            limb1: 0x4e35dd8e8f6088bb14299f8d,
            limb2: 0x1a380ab2689106e4,
        },
        r1a0: u288 {
            limb0: 0x82bacf337ca09853df42bc59,
            limb1: 0xa15de4ef34a30014c5a2e9ae,
            limb2: 0x243cc0cec53c778b,
        },
        r1a1: u288 {
            limb0: 0xcb2a1bf18e3ba9349b0a8bf2,
            limb1: 0x35134b2505cbb5a4c91f0ac4,
            limb2: 0x25e45206b13f43c4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8e97b007ffd9891bd0e77650,
            limb1: 0x77671278ac33f17df6b1db88,
            limb2: 0x243daddc47f5d5c2,
        },
        r0a1: u288 {
            limb0: 0x655fe4c8bbe5ee06aaa0054b,
            limb1: 0xf751450b02c93c7ddea95938,
            limb2: 0x21aa988e950d563f,
        },
        r1a0: u288 {
            limb0: 0xb51b3b6b8582de3eb0549518,
            limb1: 0x84a1031766b7e465f5bbf40c,
            limb2: 0xd46c2d5b95e5532,
        },
        r1a1: u288 {
            limb0: 0x50b6ddd8a5eef0067652191e,
            limb1: 0x298832a0bc46ebed8bff6190,
            limb2: 0xb568b4fe8311f93,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb7023452b9e4bf82b788ba4d,
            limb1: 0xee16d08fe228481bcbf31f9d,
            limb2: 0x2e4b8e1ed383ed7e,
        },
        r0a1: u288 {
            limb0: 0x30ade3fc05aaecdeca9f6b74,
            limb1: 0xb32bd5b239b0cb0c012f00c4,
            limb2: 0x9cb01a87232982f,
        },
        r1a0: u288 {
            limb0: 0xad77402134a63c6a7c171813,
            limb1: 0xeef9885deb567dd8337ce517,
            limb2: 0x2821b56def740cbc,
        },
        r1a1: u288 {
            limb0: 0x4b20a3cd0032ae1dc52e5987,
            limb1: 0x4cfb96b5b0f1b07f36627f6f,
            limb2: 0x1aeee9080131d02d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x892a4a82eacaea00d1396f44,
            limb1: 0x14c77a0153182e4e5cef92bb,
            limb2: 0x27cace581ba3fbf4,
        },
        r0a1: u288 {
            limb0: 0xd2ab4472e030e4d9a980ecef,
            limb1: 0x4c5bf9efa7a54bb486a8291a,
            limb2: 0x1afe907947c2b222,
        },
        r1a0: u288 {
            limb0: 0xe220c4678b1439b8f808818d,
            limb1: 0xd9a34ce90fc7509dcdd8aae,
            limb2: 0x1911ba0cc7957e9e,
        },
        r1a1: u288 {
            limb0: 0x2a8050a28a4ce29f0b6c6b16,
            limb1: 0x6140e1c4931a9227893fbb39,
            limb2: 0x16415fdac7ee882f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xddb4db99db681d35f71a159c,
            limb1: 0xf71a330019414e6fdee75700,
            limb2: 0x14d9838e7d1918bb,
        },
        r0a1: u288 {
            limb0: 0x203c8bac71951a5f2c653710,
            limb1: 0x9fc93f8da38ecc2957313982,
            limb2: 0x7b6d981259cabd9,
        },
        r1a0: u288 {
            limb0: 0xa7297cdb5be0cc45d48ca6af,
            limb1: 0xa07b4b025ebe6c960eddfc56,
            limb2: 0xef2a5c30ef00652,
        },
        r1a1: u288 {
            limb0: 0xb7f05c76d860e9122b36ecd7,
            limb1: 0x407d6522e1f9ce2bcbf80eda,
            limb2: 0x197625a558f32c36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9603d42f03278c1ad28c69ee,
            limb1: 0x5954cf00bc77f6b670807c82,
            limb2: 0xd92f10c03841135,
        },
        r0a1: u288 {
            limb0: 0x6c9627d0070686fdf7571b34,
            limb1: 0x5de249264115f98dc157b958,
            limb2: 0x2e8d434b1ece7eab,
        },
        r1a0: u288 {
            limb0: 0x26aca051c53b0de0d19e5739,
            limb1: 0x85d583d65576c57f20d4a4f9,
            limb2: 0xc5b3de0d514a4bf,
        },
        r1a1: u288 {
            limb0: 0x10ad41279a3aa8b19e5a32c0,
            limb1: 0xe7d38cde80089c8b8ff75618,
            limb2: 0x2f65434a3cffe73e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb0f04df9dec94801e48a6ff7,
            limb1: 0xdc59d087c627d38334e5b969,
            limb2: 0x3d36e11420be053,
        },
        r0a1: u288 {
            limb0: 0xc80f070001aa1586189e0215,
            limb1: 0xff849fcbbbe7c00c83ab5282,
            limb2: 0x2a2354b2882706a6,
        },
        r1a0: u288 {
            limb0: 0x48cf70c80f08b6c7dc78adb2,
            limb1: 0xc6632efa77b36a4a1551d003,
            limb2: 0xc2d3533ece75879,
        },
        r1a1: u288 {
            limb0: 0x63e82ba26617416a0b76ddaa,
            limb1: 0xdaceb24adda5a049bed29a50,
            limb2: 0x1a82061a3344043b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9da507d8fbd357c2ef79510d,
            limb1: 0xf97471ebc4b41b079e187f02,
            limb2: 0x1ee683a185b12467,
        },
        r0a1: u288 {
            limb0: 0xb38a0c2b7a2bfd8fda7d6521,
            limb1: 0x183bc87ae55b268a7c03554f,
            limb2: 0x27129eef68c05e88,
        },
        r1a0: u288 {
            limb0: 0x5d09799fdaaf4207f2914b98,
            limb1: 0x83de2d11f134ba44caefafb3,
            limb2: 0x94d2c1cf86c638e,
        },
        r1a1: u288 {
            limb0: 0x70933c00ea48b4718a4f567e,
            limb1: 0xce5d873eb220eed210637b03,
            limb2: 0x87958c956e03c02,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9152fecf0f523415acc7c7be,
            limb1: 0xd9632cbfccc4ea5d7bf31177,
            limb2: 0x2d7288c5f8c83ab1,
        },
        r0a1: u288 {
            limb0: 0x53144bfe4030f3f9f5efda8,
            limb1: 0xfeec394fbf392b11c66bae27,
            limb2: 0x28840813ab8a200b,
        },
        r1a0: u288 {
            limb0: 0xdec3b11fbc28b305d9996ec7,
            limb1: 0x5b5f8d9d17199e149c9def6e,
            limb2: 0x10c1a149b6751bae,
        },
        r1a1: u288 {
            limb0: 0x665e8eb7e7d376a2d921c889,
            limb1: 0xfdd76d06e46ee1a943b8788d,
            limb2: 0x8bb21d9960e837b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3a67c28a175200e631aa506a,
            limb1: 0x7397303a34968ff17c06e801,
            limb2: 0x1b81e0c63123688b,
        },
        r0a1: u288 {
            limb0: 0x3490cfd4f076c621dac4a12c,
            limb1: 0xec183578c91b90b72e5887b7,
            limb2: 0x179fb354f608da00,
        },
        r1a0: u288 {
            limb0: 0x9322bde2044dde580a78ba33,
            limb1: 0xfc74821b668d3570cad38f8b,
            limb2: 0x8cec54a291f5e57,
        },
        r1a1: u288 {
            limb0: 0xc2818b6a9530ee85d4b2ae49,
            limb1: 0x8d7b651ad167f2a43d7a2d0a,
            limb2: 0x7c9ca9bab0ffc7f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1a9a20e4bbcddbd36011aff8,
            limb1: 0x8178299bc2101cba2b8c8809,
            limb2: 0x26521ee65916e41f,
        },
        r0a1: u288 {
            limb0: 0x9a15526f30920c54cd3738b9,
            limb1: 0xeef018c64005ce8dc7388f,
            limb2: 0x270c837cab485bf4,
        },
        r1a0: u288 {
            limb0: 0x3876608d989f12e397a9a81,
            limb1: 0x423d788f9cddee546a9ecb74,
            limb2: 0x2440c6d9b88eceaa,
        },
        r1a1: u288 {
            limb0: 0xd7b236505e6b206741eab1ee,
            limb1: 0x529325f72fc78d94e965f8f0,
            limb2: 0x21778cb2882ae775,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd8d6ea7f7301f506eff02ba7,
            limb1: 0xa04ed3fcaf19cf1d9c47f9df,
            limb2: 0x1229e117d6398ad2,
        },
        r0a1: u288 {
            limb0: 0xb26ea29d59726d4fb497a543,
            limb1: 0x9721dc237f0fe25a184bd80b,
            limb2: 0x2d0fbc21f8c41918,
        },
        r1a0: u288 {
            limb0: 0xb47e04f333064132f65c35a1,
            limb1: 0xc3e96b17cf01b57e2ea9193,
            limb2: 0x1bd3aa7bc6bfd069,
        },
        r1a1: u288 {
            limb0: 0x45ddfd3aa181c7ec20b49fa4,
            limb1: 0x9292dbd6f0841bf8d11d9bee,
            limb2: 0x1a2692f084c16600,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa576408f8300de3a7714e6ae,
            limb1: 0xe1072c9a16f202ecf37fbc34,
            limb2: 0x1b0cb1e2b5871263,
        },
        r0a1: u288 {
            limb0: 0x2128e2314694b663286e231e,
            limb1: 0x54bea71957426f002508f715,
            limb2: 0x36ecc5dbe069dca,
        },
        r1a0: u288 {
            limb0: 0x17c77cd88f9d5870957850ce,
            limb1: 0xb7f4ec2bc270ce30538fe9b8,
            limb2: 0x766279e588592bf,
        },
        r1a1: u288 {
            limb0: 0x1b6caddf18de2f30fa650122,
            limb1: 0x40b77237a29cada253c126c6,
            limb2: 0x74ff1349b1866c8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfb8ca1a6c4c87dbcac51932b,
            limb1: 0xc504083de17a971c20406a0f,
            limb2: 0x137a56f191768b94,
        },
        r0a1: u288 {
            limb0: 0xfb5aa6f2372d5f0215df011f,
            limb1: 0x748a52bb197d5823f454714a,
            limb2: 0x5956668f11428c1,
        },
        r1a0: u288 {
            limb0: 0x2fd3893ee1bdc64b74b04127,
            limb1: 0x798602b9c84cde7d59ecbaea,
            limb2: 0x13954030b64a484a,
        },
        r1a1: u288 {
            limb0: 0x15004b4ddbe25f6da7237e40,
            limb1: 0xf60e58e80498cd026c48e116,
            limb2: 0x2488955e83aeb585,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3603266e05560becab36faef,
            limb1: 0x8c3b88c9390278873dd4b048,
            limb2: 0x24a715a5d9880f38,
        },
        r0a1: u288 {
            limb0: 0xe9f595b111cfd00d1dd28891,
            limb1: 0x75c6a392ab4a627f642303e1,
            limb2: 0x17b34a30def82ab6,
        },
        r1a0: u288 {
            limb0: 0xe706de8f35ac8372669fc8d3,
            limb1: 0x16cc7f4032b3f3ebcecd997d,
            limb2: 0x166eba592eb1fc78,
        },
        r1a1: u288 {
            limb0: 0x7d584f102b8e64dcbbd1be9,
            limb1: 0x2ead4092f009a9c0577f7d3,
            limb2: 0x2fe2c31ee6b1d41e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72253d939632f8c28fb5763,
            limb1: 0x9b943ab13cad451aed1b08a2,
            limb2: 0xdb9b2068e450f10,
        },
        r0a1: u288 {
            limb0: 0x80f025dcbce32f6449fa7719,
            limb1: 0x8a0791d4d1ed60b86e4fe813,
            limb2: 0x1b1bd5dbce0ea966,
        },
        r1a0: u288 {
            limb0: 0xaa72a31de7d815ae717165d4,
            limb1: 0x501c29c7b6aebc4a1b44407f,
            limb2: 0x464aa89f8631b3a,
        },
        r1a1: u288 {
            limb0: 0x6b8d137e1ea43cd4b1f616b1,
            limb1: 0xdd526a510cc84f150cc4d55a,
            limb2: 0x1da2ed980ebd3f29,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1733863c0d5efcd055d847b2,
            limb1: 0x12ecad86a05a04b8a6a090a5,
            limb2: 0x445a33966c6c43b,
        },
        r0a1: u288 {
            limb0: 0xc148ccfddbd913edea439576,
            limb1: 0xc45f4feead08c57386e4890,
            limb2: 0x1c7ff6c4723625ca,
        },
        r1a0: u288 {
            limb0: 0xe5f3092432bbc516c1b98f39,
            limb1: 0x5603e00eb46942a018311b02,
            limb2: 0x1c63163abbf60b2c,
        },
        r1a1: u288 {
            limb0: 0xe87efee085ff607a7e5484ee,
            limb1: 0xa3581e665141dfcf518fbe3,
            limb2: 0x180fb0f34dbcf727,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x70c45755498a9ad3c3f6f997,
            limb1: 0xfc3d0cc0820f21df2f1845e8,
            limb2: 0x245b3cab09dea48a,
        },
        r0a1: u288 {
            limb0: 0x6b53bbdb87f7633d29a515df,
            limb1: 0xeddc2c25418ba77ddd3abecb,
            limb2: 0x1a171f3e487b0395,
        },
        r1a0: u288 {
            limb0: 0x99b82da2cd31dec81ffb0748,
            limb1: 0xd121b9d91861f3458af2e5df,
            limb2: 0x2f9d1d6b4bfad68b,
        },
        r1a1: u288 {
            limb0: 0xcb5371d8f04bbf0e709cc8d4,
            limb1: 0x5ee9eab2c91d16ae3b3753e6,
            limb2: 0x1103fcb7fdf97e1d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x867cced8a010850958f41ff5,
            limb1: 0x6a37fdb2b8993eed18bafe8e,
            limb2: 0x21b9f782109e5a7,
        },
        r0a1: u288 {
            limb0: 0x7307477d650618e66de38d0f,
            limb1: 0xacb622ce92a7e393dbe10ba1,
            limb2: 0x236e70838cee0ed5,
        },
        r1a0: u288 {
            limb0: 0xb564a308aaf5dda0f4af0f0d,
            limb1: 0x55fc71e2f13d8cb12bd51e74,
            limb2: 0x294cf115a234a9e9,
        },
        r1a1: u288 {
            limb0: 0xbd166057df55c135b87f35f3,
            limb1: 0xf9f29b6c50f1cce9b85ec9b,
            limb2: 0x2e8448d167f20f96,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43af295c619c8faf62ac75fc,
            limb1: 0x2d0474e5d4da68e458f102ec,
            limb2: 0x41c6c31196252a8,
        },
        r0a1: u288 {
            limb0: 0x706b9943165580e262ed027,
            limb1: 0xee88beebc81791b550321f56,
            limb2: 0x13e495416c16b3ea,
        },
        r1a0: u288 {
            limb0: 0x608e8e72078f929047c3643a,
            limb1: 0x8217625c7f77c7889c6e386b,
            limb2: 0x1b9a06fd3ac7d30d,
        },
        r1a1: u288 {
            limb0: 0x3bcc064859fa760f216d6cf,
            limb1: 0xfc61cef9228d666c3a8cbd92,
            limb2: 0x1564d3369d72b16a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdedaff3205bb953b2c390b8a,
            limb1: 0xe1a899da21c1dafb485c707e,
            limb2: 0x1ec897e7a041493e,
        },
        r0a1: u288 {
            limb0: 0xf52c3c30cd4d3202b34089e0,
            limb1: 0xc652aa1ff533e1aad7532305,
            limb2: 0x2a1df766e5e3aa2e,
        },
        r1a0: u288 {
            limb0: 0x7ac695d3e19d79b234daaf3d,
            limb1: 0x5ce2f92666aec92a650feee1,
            limb2: 0x21ab4fe20d978e77,
        },
        r1a1: u288 {
            limb0: 0xa64a913a29a1aed4e0798664,
            limb1: 0x66bc208b511503d127ff5ede,
            limb2: 0x2389ba056de56a8d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x216428a329de002600c04b7c,
            limb1: 0x88f46b71adf04326b2c3af25,
            limb2: 0x15becef207721011,
        },
        r0a1: u288 {
            limb0: 0x2cc285e58531769ca2bb0ec3,
            limb1: 0x411a8a303e8257255ed5fc69,
            limb2: 0x17588fbcb7bb1dd7,
        },
        r1a0: u288 {
            limb0: 0x3237efa598a04e8a751b57e4,
            limb1: 0x238a18009fe4d82dc4e888e7,
            limb2: 0x2a85b7892527186,
        },
        r1a1: u288 {
            limb0: 0xcfa0bb630abe7305efe3d136,
            limb1: 0x7087d8fc2d98e06969679394,
            limb2: 0x27ec2d42fc5f1fe5,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd88b16e68600a12e6c1f6006,
            limb1: 0x333243b43d3b7ff18d0cc671,
            limb2: 0x2b84b2a9b0f03ed8,
        },
        r0a1: u288 {
            limb0: 0xf3e2b57ddaac822c4da09991,
            limb1: 0xd7c894b3fe515296bb054d2f,
            limb2: 0x10a75e4c6dddb441,
        },
        r1a0: u288 {
            limb0: 0x73c65fbbb06a7b21b865ac56,
            limb1: 0x21f4ecd1403bb78729c7e99b,
            limb2: 0xaf88a160a6b35d4,
        },
        r1a1: u288 {
            limb0: 0xade61ce10b8492d659ff68d0,
            limb1: 0x1476e76cf3a8e0df086ad9eb,
            limb2: 0x2e28cfc65d61e946,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdf8b54b244108008e7f93350,
            limb1: 0x2ae9a68b9d6b96f392decd6b,
            limb2: 0x160b19eed152271c,
        },
        r0a1: u288 {
            limb0: 0xc18a8994cfbb2e8df446e449,
            limb1: 0x408d51e7e4adedd8f4f94d06,
            limb2: 0x27661b404fe90162,
        },
        r1a0: u288 {
            limb0: 0x1390b2a3b27f43f7ac73832c,
            limb1: 0x14d57301f6002fd328f2d64d,
            limb2: 0x17f3fa337367dddc,
        },
        r1a1: u288 {
            limb0: 0x79cab8ff5bf2f762c5372f80,
            limb1: 0xc979d6f385fae4b5e4785acf,
            limb2: 0x60c5307a735b00f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xfa3693087cd7ff0cc6e9fce1,
            limb1: 0x6418c7b9517bba012db92bb8,
            limb2: 0x1e72e8341de8d65a,
        },
        r0a1: u288 {
            limb0: 0xdaa2c38e26d0e03e49602add,
            limb1: 0xb8ea2236899db01670cb65f0,
            limb2: 0x11d3a1b5d253c70a,
        },
        r1a0: u288 {
            limb0: 0x2ba942778169b1df85c79657,
            limb1: 0x19b58ffc47092cf5736fe308,
            limb2: 0x220ef2396487ba1,
        },
        r1a1: u288 {
            limb0: 0xc626814c557ed6fbcc8ce464,
            limb1: 0xf74873c4397f363ffdf651ad,
            limb2: 0x69470d7c0c58896,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc6a2f84782210b7dc304ded5,
            limb1: 0xd6fc5260844176c24929b106,
            limb2: 0x250c51a7f068a4c4,
        },
        r0a1: u288 {
            limb0: 0x4e0be3460dda6710f0f39455,
            limb1: 0x7cc7596f5588b6f0d107a24e,
            limb2: 0x8e385fec4c0de90,
        },
        r1a0: u288 {
            limb0: 0x336bb0b8d58e5be8af4bf3e4,
            limb1: 0x9dc7bd6f509799289ea6d355,
            limb2: 0x12273b9d4680b660,
        },
        r1a1: u288 {
            limb0: 0xa474675ed723d642e9514fc9,
            limb1: 0xabf556475c77dcf04489109f,
            limb2: 0x15c9576fbc43ffda,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x386d7b23c6dccb87637018c9,
            limb1: 0xfed2ea478e9a2210289079e2,
            limb2: 0x100aa83cb843353e,
        },
        r0a1: u288 {
            limb0: 0x229c5c285f049d04c3dc5ce7,
            limb1: 0x28110670fe1d38c53ffcc6f7,
            limb2: 0x1778918279578f50,
        },
        r1a0: u288 {
            limb0: 0xe9ad2c7b8a17a1f1627ff09d,
            limb1: 0xedff5563c3c3e7d2dcc402ec,
            limb2: 0xa8bd6770b6d5aa8,
        },
        r1a1: u288 {
            limb0: 0x66c5c1aeed5c04470b4e8a3d,
            limb1: 0x846e73d11f2d18fe7e1e1aa2,
            limb2: 0x10a60eabe0ec3d78,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2aed5ff299839d9bd6cf10eb,
            limb1: 0x69cc284d20a72c830a577bae,
            limb2: 0x735d9821820a792,
        },
        r0a1: u288 {
            limb0: 0xf727b95be9ff8d34a904b300,
            limb1: 0xb64ea950505bad1d62d11da4,
            limb2: 0x2096cb6a3f0f1029,
        },
        r1a0: u288 {
            limb0: 0x99daf057e11f1d53d5868142,
            limb1: 0x198346b36481f5bde18dd30f,
            limb2: 0x17ddbe6abcb8debf,
        },
        r1a1: u288 {
            limb0: 0xe013edd0b15c3078da002fde,
            limb1: 0x66143402a5af71ad5ec389e7,
            limb2: 0x1bbaecfb15bbb184,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x88ca191d85be1f6c205257ef,
            limb1: 0xd0cecf5c5f80926c77fd4870,
            limb2: 0x16ec42b5cae83200,
        },
        r0a1: u288 {
            limb0: 0x154cba82460752b94916186d,
            limb1: 0x564f6bebac05a4f3fb1353ac,
            limb2: 0x2d47a47da836d1a7,
        },
        r1a0: u288 {
            limb0: 0xb39c4d6150bd64b4674f42ba,
            limb1: 0x93c967a38fe86f0779bf4163,
            limb2: 0x1a51995a49d50f26,
        },
        r1a1: u288 {
            limb0: 0xeb7bdec4b7e304bbb0450608,
            limb1: 0x11fc9a124b8c74b3d5560ea4,
            limb2: 0xbfa9bd7f55ad8ac,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x23918ef07dd36a918e17c8f4,
            limb1: 0xb75542a595e0f74ee786a8a1,
            limb2: 0x9f2becec9624e56,
        },
        r0a1: u288 {
            limb0: 0x72521fdc8320452337ce1ad3,
            limb1: 0xd77d3249957d05af42d416cd,
            limb2: 0x75124b9f5410cc0,
        },
        r1a0: u288 {
            limb0: 0xf92bf1c3f1b4afc7b2f4adf8,
            limb1: 0x2e61b6c048ffcb3340c9d7a1,
            limb2: 0x20473c777a11dbfd,
        },
        r1a1: u288 {
            limb0: 0x7e3ae719549fc0dc6ae0fc5d,
            limb1: 0xc6c8940cf1f88d64bd851f8e,
            limb2: 0x24b406c8d30c93f3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2fdc574c85cf0c0ce5e07a51,
            limb1: 0xd2439bf7b00bddc4cfb01b0c,
            limb2: 0x125c3bbdeb0bd2da,
        },
        r0a1: u288 {
            limb0: 0x9d664714bae53cafcb5ef55d,
            limb1: 0x495c01724790853548f5e4de,
            limb2: 0x2ce5e2e263725941,
        },
        r1a0: u288 {
            limb0: 0x98071eb7fe88c9124aee3774,
            limb1: 0xc3f66947a52bd2f6d520579f,
            limb2: 0x2eaf775dbd52f7d3,
        },
        r1a1: u288 {
            limb0: 0x23e5594948e21db2061dca92,
            limb1: 0xd0ffa6f6c77290531c185431,
            limb2: 0x604c085de03afb1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9568f1e75405dec93bb33ae3,
            limb1: 0xf4a3b3688e20c32e3f4cc801,
            limb2: 0x10168d56d75b4f8c,
        },
        r0a1: u288 {
            limb0: 0x5d58c0bd978bf34fcffd243b,
            limb1: 0x6a75524732e35ad7e2c14d8c,
            limb2: 0x1d704bef081ef0f0,
        },
        r1a0: u288 {
            limb0: 0x12e1b2fa55af148474b6b669,
            limb1: 0x37f76f7e6793dc8fc40d103d,
            limb2: 0x2e6a72b7e32cc23d,
        },
        r1a1: u288 {
            limb0: 0xdc04d934f56a66dc8ad9dde5,
            limb1: 0x27c24f12a1a369d0d491af38,
            limb2: 0x2ba1eaa89f23e3fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xeec2912e15f6bda39d4e005e,
            limb1: 0x2b8610c44d27bdbc6ba2aac5,
            limb2: 0x78ddc4573fc1fed,
        },
        r0a1: u288 {
            limb0: 0x48099a0da11ea21de015229d,
            limb1: 0x5fe937100967d5cc544f4af1,
            limb2: 0x2c9ffe6d7d7e9631,
        },
        r1a0: u288 {
            limb0: 0xa70d251296ef1ae37ceb7d03,
            limb1: 0x2adadcb7d219bb1580e6e9c,
            limb2: 0x180481a57f22fd03,
        },
        r1a1: u288 {
            limb0: 0xacf46db9631037dd933eb72a,
            limb1: 0x8a58491815c7656292a77d29,
            limb2: 0x261e3516c348ae12,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x42f0ca47dfc1ccb44608d7,
            limb1: 0x18ba571740c773a82f84c736,
            limb2: 0x2086f5f1b7c877a4,
        },
        r0a1: u288 {
            limb0: 0x4b675e417445f773c070c368,
            limb1: 0x8c05455a33dbc0e498d8c4c5,
            limb2: 0x20854b3c18fd02ec,
        },
        r1a0: u288 {
            limb0: 0x3bdbb608b94e1dd05792acb0,
            limb1: 0x20c3954794705711ecdcd7b6,
            limb2: 0x53dff86876be035,
        },
        r1a1: u288 {
            limb0: 0x298147d2d29aa93a22f89669,
            limb1: 0xf5bda1d9e4262ca7bf0d7cc2,
            limb2: 0x1171effc905895a6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2bfa32f0a09c3e2cfb8f6a38,
            limb1: 0x7a24df3ff3c7119a59d49318,
            limb2: 0x10e42281d64907ba,
        },
        r0a1: u288 {
            limb0: 0xce42177a66cdeb4207d11e0c,
            limb1: 0x3322aa425a9ca270152372ad,
            limb2: 0x2f7fa83db407600c,
        },
        r1a0: u288 {
            limb0: 0x62a8ff94fd1c7b9035af4446,
            limb1: 0x3ad500601bbb6e7ed1301377,
            limb2: 0x254d253ca06928f,
        },
        r1a1: u288 {
            limb0: 0xf8f1787cd8e730c904b4386d,
            limb1: 0x7fd3744349918d62c42d24cc,
            limb2: 0x28a05e105d652eb8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6ef31e059d602897fa8e80a8,
            limb1: 0x66a0710847b6609ceda5140,
            limb2: 0x228c0e568f1eb9c0,
        },
        r0a1: u288 {
            limb0: 0x7b47b1b133c1297b45cdd79b,
            limb1: 0x6b4f04ed71b58dafd06b527b,
            limb2: 0x13ae6db5254df01a,
        },
        r1a0: u288 {
            limb0: 0xbeca2fccf7d0754dcf23ddda,
            limb1: 0xe3d0bcd7d9496d1e5afb0a59,
            limb2: 0x305a0afb142cf442,
        },
        r1a1: u288 {
            limb0: 0x2d299847431477c899560ecf,
            limb1: 0xbcd9e6c30bedee116b043d8d,
            limb2: 0x79473a2a7438353,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93c77a456fadb646101d4d4c,
            limb1: 0x72d569b4800261c086b64625,
            limb2: 0x1f3cc8df07945ff9,
        },
        r0a1: u288 {
            limb0: 0xd159ca8c5e5ed6cba5682b1f,
            limb1: 0xfef0a998b945673b4ed23d59,
            limb2: 0x2d66feac56f7f273,
        },
        r1a0: u288 {
            limb0: 0x7b2963817064ae86539f1f04,
            limb1: 0xe6349332002d11e02c67fa4d,
            limb2: 0x1a2b0d19d53e9022,
        },
        r1a1: u288 {
            limb0: 0xf32c8602471a8724a758ff06,
            limb1: 0x1e1eb715c2b4bbf717d52035,
            limb2: 0x176fe92e66251da6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65950905ec89d3ac29acb240,
            limb1: 0x162017a20cf11ffba8fb6e5f,
            limb2: 0x2267657e256f39fb,
        },
        r0a1: u288 {
            limb0: 0x11a95aa7946a85a9f9311818,
            limb1: 0x9cec0fd4169859ec64526a,
            limb2: 0x234c0a23f4e8908b,
        },
        r1a0: u288 {
            limb0: 0xf5c81f688593d1cad07c4d6f,
            limb1: 0x6ef13be8aca360049af93988,
            limb2: 0x8316f7e493ca3e5,
        },
        r1a1: u288 {
            limb0: 0x6432003f3ee75674020692e7,
            limb1: 0x15cf87d9ab3dc177d6dc861b,
            limb2: 0x10a9ad9ea1eb7f33,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x65b71fe695e7ccd4b460dace,
            limb1: 0xa6ceba62ef334e6fe91301d5,
            limb2: 0x299f578d0f3554e6,
        },
        r0a1: u288 {
            limb0: 0xaf781dd030a274e7ecf0cfa4,
            limb1: 0x2095020d373a14d7967797aa,
            limb2: 0x6a7f9df6f185bf8,
        },
        r1a0: u288 {
            limb0: 0x8e91e2dba67d130a0b274df3,
            limb1: 0xe192a19fce285c12c6770089,
            limb2: 0x6e9acf4205c2e22,
        },
        r1a1: u288 {
            limb0: 0xbcd5c206b5f9c77d667189bf,
            limb1: 0x656a7e2ebc78255d5242ca9,
            limb2: 0x25f43fec41d2b245,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x93be32044a345566a150f671,
            limb1: 0x3a55642c41567d758825a1c7,
            limb2: 0x173eeca06024fe2c,
        },
        r0a1: u288 {
            limb0: 0xe31672ffdd90cfe8a82bfe77,
            limb1: 0x1b37376fce965a6e37c65ee,
            limb2: 0x11918581a75644d5,
        },
        r1a0: u288 {
            limb0: 0x504b48607b3736ae103c04be,
            limb1: 0x1ca5282eb3f1db6a0b7c0acf,
            limb2: 0x2ffa947c95e80048,
        },
        r1a1: u288 {
            limb0: 0x93cea83cece78bf752fec77d,
            limb1: 0xe8c45454b678378cb9c85cff,
            limb2: 0x1bfcb9d00ac886b3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4e56e6733cce20d9c5b16d96,
            limb1: 0xc7ef260535fb75b9d3e089f,
            limb2: 0x292dd4aa636e7729,
        },
        r0a1: u288 {
            limb0: 0x6e7e1038b336f36519c9faaf,
            limb1: 0x3c66bd609510309485e225c7,
            limb2: 0x10cacac137411eb,
        },
        r1a0: u288 {
            limb0: 0x4a3e8b96278ac092fe4f3b15,
            limb1: 0xba47e583e2750b42f93c9631,
            limb2: 0x125da6bd69495bb9,
        },
        r1a1: u288 {
            limb0: 0xae7a56ab4b959a5f6060d529,
            limb1: 0xc3c263bfd58c0030c063a48e,
            limb2: 0x2f4d15f13fae788c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x301e0885c84d273b6d323124,
            limb1: 0x11fd5c75e269f7a30fa4154f,
            limb2: 0x19afdcfdcce2fc0d,
        },
        r0a1: u288 {
            limb0: 0x3d13519f934526be815c38b0,
            limb1: 0xd43735909547da73838874fc,
            limb2: 0x255d8aca30f4e0f6,
        },
        r1a0: u288 {
            limb0: 0x90a505b76f25a3396e2cea79,
            limb1: 0x3957a2d0848c54b9079fc114,
            limb2: 0x1ba0cd3a9fe6d4bb,
        },
        r1a1: u288 {
            limb0: 0xc47930fba77a46ebb1db30a9,
            limb1: 0x993a1cb166e9d40bebab02b2,
            limb2: 0x1deb16166d48118b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xed5055f6e90a8b7084a42f40,
            limb1: 0xe8615f97a955dc543a134f75,
            limb2: 0x47dd0d72a71675b,
        },
        r0a1: u288 {
            limb0: 0x4ea03e7db6b969bd026f8f3b,
            limb1: 0x74e5c64dd00a5a9c376ec33c,
            limb2: 0xc5c09f49f10e1ad,
        },
        r1a0: u288 {
            limb0: 0x36f49b4e0123d15eaa061d86,
            limb1: 0xf9303084e4526adac10ea39,
            limb2: 0x1b58b4b583061d0b,
        },
        r1a1: u288 {
            limb0: 0x50d2ffd4689df3c12fdd770b,
            limb1: 0xbd86aba6939cc710ba4cdfad,
            limb2: 0xfd9c00a8df5a0a8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x20413fb0cbed8e9fc711afc,
            limb1: 0x5f51dfa13bee852eacf17206,
            limb2: 0x2ad2b9f88ed57bf5,
        },
        r0a1: u288 {
            limb0: 0x8a6b7e1c5dae41ea08c97c39,
            limb1: 0x4e897b0d841c8a950ff767f7,
            limb2: 0x24ee929751e2633a,
        },
        r1a0: u288 {
            limb0: 0x45af8ae6d39cf31bf4c76566,
            limb1: 0xe089f7e7f0e2b07603e4831b,
            limb2: 0x43886a233535170,
        },
        r1a1: u288 {
            limb0: 0x49b80b0145bd67426a42cca,
            limb1: 0xdf6f6631fa93faf22f2fc392,
            limb2: 0x8a53524aa9c8e6f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb15bbaec50ff49d30e49f74a,
            limb1: 0xc90a8c79fb045c5468f14151,
            limb2: 0x25e47927e92df0e3,
        },
        r0a1: u288 {
            limb0: 0x57f66909d5d40dfb8c7b4d5c,
            limb1: 0xea5265282e2139c48c1953f2,
            limb2: 0x2d7f5e6aff2381f6,
        },
        r1a0: u288 {
            limb0: 0x2a2f573b189a3c8832231394,
            limb1: 0x738abc15844895ffd4733587,
            limb2: 0x20aa11739c4b9bb4,
        },
        r1a1: u288 {
            limb0: 0x51695ec614f1ff4cce2f65d1,
            limb1: 0x6765aae6cb895a2406a6dd7e,
            limb2: 0x1126ee431c522da0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e52e49d0cc025fc9083d94c,
            limb1: 0x84520c3f1c46a8da903f101c,
            limb2: 0x24cdddfc383a36ac,
        },
        r0a1: u288 {
            limb0: 0x30891521091093f358be9fd4,
            limb1: 0x6ed0397a13a70e5313983285,
            limb2: 0x1f6a2ad1e31f3627,
        },
        r1a0: u288 {
            limb0: 0xff291123d7deaaf862f649b7,
            limb1: 0xc67821e497694015b93bb181,
            limb2: 0x25b62ce2a60ed12f,
        },
        r1a1: u288 {
            limb0: 0x2bba0256a57ce253063225b1,
            limb1: 0xd42c6207a60da514ba086140,
            limb2: 0x275c0770950a766a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9214fc3209f1518b05fd21c6,
            limb1: 0x9bc8ce4f56423009710770e8,
            limb2: 0x32445cc6972799c,
        },
        r0a1: u288 {
            limb0: 0x93ef401ecd9cfae3644d22e6,
            limb1: 0xce5a741a9847a144cfaf8c96,
            limb2: 0xf7a814d5726da4a,
        },
        r1a0: u288 {
            limb0: 0xd19264d986f163b133a91c0c,
            limb1: 0x529dc5ce4b193c0f672c6a32,
            limb2: 0x2e9a118959353374,
        },
        r1a1: u288 {
            limb0: 0x3d97d6e8f45072cc9e85e412,
            limb1: 0x4dafecb04c3bb23c374f0486,
            limb2: 0xa174dd4ac8ee628,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3e4fd1ad0e912487e75673ec,
            limb1: 0x3e2316e850b4848d544e7d43,
            limb2: 0x25c86679141113ee,
        },
        r0a1: u288 {
            limb0: 0xf7bea21d1753b23b0aa013ac,
            limb1: 0xc8c16858d61bd22882eebe0c,
            limb2: 0x1f2ef0cfebd0852b,
        },
        r1a0: u288 {
            limb0: 0xeade6c0fa426f134817cef0f,
            limb1: 0x5d03819c3fbed35d786573af,
            limb2: 0x14f966c4cfaf4826,
        },
        r1a1: u288 {
            limb0: 0x17d94770b05831cbc032d1e3,
            limb1: 0xb209229788860cbb0ab95b95,
            limb2: 0x2fe52a64176f9f1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98d8b0c4adcf27bceb305c2c,
            limb1: 0x859afa9c7668ed6152d8cba3,
            limb2: 0x29e7694f46e3a272,
        },
        r0a1: u288 {
            limb0: 0x1d970845365594307ba97556,
            limb1: 0xd002d93ad793e154afe5b49b,
            limb2: 0x12ca77d3fb8eee63,
        },
        r1a0: u288 {
            limb0: 0x9f2934faefb8268e20d0e337,
            limb1: 0xbc4b5e1ec056881319f08766,
            limb2: 0x2e103461759a9ee4,
        },
        r1a1: u288 {
            limb0: 0x7adc6cb87d6b43000e2466b6,
            limb1: 0x65e5cefa42b25a7ee8925fa6,
            limb2: 0x2560115898d7362a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7b43a953ea747b2de19bca54,
            limb1: 0xcd58a59d75cd39f3c01e166a,
            limb2: 0x1bbef947891c7f76,
        },
        r0a1: u288 {
            limb0: 0xa0f99894141d2606ef09b093,
            limb1: 0x3115907254852bfeab3f080b,
            limb2: 0x1cb61682d5bc16aa,
        },
        r1a0: u288 {
            limb0: 0xda3416f9cf8c8d5d12338179,
            limb1: 0x64ab47e86c90359562c70e12,
            limb2: 0x166b10b846185416,
        },
        r1a1: u288 {
            limb0: 0xc4ba3729680c56f3cb7e9c89,
            limb1: 0x546cb7e5df6b6e8a76be9a2e,
            limb2: 0xc002984976ab2e8,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x64d864643668392c0e357cc4,
            limb1: 0x4c9bf66853f1b287015ab84c,
            limb2: 0x2f5f1b92ad7ee4d4,
        },
        r0a1: u288 {
            limb0: 0xdc33c8da5c575eef6987a0e1,
            limb1: 0x51cc07c7ef28e1b8d934bc32,
            limb2: 0x2358d94a17ec2a44,
        },
        r1a0: u288 {
            limb0: 0xf659845b829bbba363a2497b,
            limb1: 0x440f348e4e7bed1fb1eb47b2,
            limb2: 0x1ad0eaab0fb0bdab,
        },
        r1a1: u288 {
            limb0: 0x1944bb6901a1af6ea9afa6fc,
            limb1: 0x132319df135dedddf5baae67,
            limb2: 0x52598294643a4aa,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x76fd94c5e6f17fa6741bd7de,
            limb1: 0xc2e0831024f67d21013e0bdd,
            limb2: 0x21e2af6a43119665,
        },
        r0a1: u288 {
            limb0: 0xad290eab38c64c0d8b13879b,
            limb1: 0xdd67f881be32b09d9a6c76a0,
            limb2: 0x8000712ce0392f2,
        },
        r1a0: u288 {
            limb0: 0xd30a46f4ba2dee3c7ace0a37,
            limb1: 0x3914314f4ec56ff61e2c29e,
            limb2: 0x22ae1ba6cd84d822,
        },
        r1a1: u288 {
            limb0: 0x5d888a78f6dfce9e7544f142,
            limb1: 0x9439156de974d3fb6d6bda6e,
            limb2: 0x106c8f9a27d41a4f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x7e4419f6751fba94bf02d0b2,
            limb1: 0x14554711fea849ee6b17cf7b,
            limb2: 0x2dfd2e25ba42028e,
        },
        r0a1: u288 {
            limb0: 0x61c2ee2fb15a34c09bf0cb73,
            limb1: 0xeddafa948c4dd9dfc6b80223,
            limb2: 0x16fc8963b043a124,
        },
        r1a0: u288 {
            limb0: 0x500bd25f8f00e394957b8f10,
            limb1: 0x40d67cc69c3e45796c802b17,
            limb2: 0xfaa65f748b392e6,
        },
        r1a1: u288 {
            limb0: 0x67adeca156268dd26a0f3b8f,
            limb1: 0x53aab84ee36648652d4a9ad7,
            limb2: 0x1731b822b1edb15,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd9968a587193761db347b167,
            limb1: 0x3a2e50cd5a3c9ce397f57966,
            limb2: 0x453b7c09d2533c6,
        },
        r0a1: u288 {
            limb0: 0x63641f1a1b774b98ee918565,
            limb1: 0xc73f43de68bc95d3b0ee3bd5,
            limb2: 0x18eae755f2b011c4,
        },
        r1a0: u288 {
            limb0: 0xf6f364e5ff227782eaf2d3c,
            limb1: 0x4d70d35852611fb94924d577,
            limb2: 0x8708f36f933f931,
        },
        r1a1: u288 {
            limb0: 0x5b41149abbabeb379fd178d6,
            limb1: 0x35d5f48246fd892005d1ae2d,
            limb2: 0x10a1a4e7c6af3453,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x92c09e4796207b802168341b,
            limb1: 0xd2d9d6acffd7829066cc49ce,
            limb2: 0xc89c2d0a7b2c81e,
        },
        r0a1: u288 {
            limb0: 0x47e3c1cf6cdb6f3efe778c7f,
            limb1: 0x66b347099b6436794cf062eb,
            limb2: 0x18b4ccc64ae0a857,
        },
        r1a0: u288 {
            limb0: 0x7d5793606a73b2740c71484a,
            limb1: 0xa0070135ca2dc571b28e3c9c,
            limb2: 0x1bc03576e04b94cf,
        },
        r1a1: u288 {
            limb0: 0x1ba85b29875e638c10f16c99,
            limb1: 0x158f2f2acc3c2300bb9f9225,
            limb2: 0x42d8a8c36ea97c6,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90f1ba1421b75df1d5fce109,
            limb1: 0xa87a26dab0d092e4200fc547,
            limb2: 0x13e25cb455e22605,
        },
        r0a1: u288 {
            limb0: 0xf87a49fbf29bd54d57200561,
            limb1: 0x7498a103db56ecd387282ec,
            limb2: 0x4414e2a62f4b1f4,
        },
        r1a0: u288 {
            limb0: 0x59657c3f4a9905ade89d75f8,
            limb1: 0x3466de472155ebff003c8db2,
            limb2: 0x221d55e494819950,
        },
        r1a1: u288 {
            limb0: 0xe8c6f35641b2be889d9e246a,
            limb1: 0xae1eba8804b6ddd9686c579c,
            limb2: 0x1fcdcd84f2fd462b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9440ad13408319cecb07087b,
            limb1: 0x537afc0c0cfe8ff761c24e08,
            limb2: 0x48e4ac10081048d,
        },
        r0a1: u288 {
            limb0: 0xa37fb82b03a2c0bb2aa50c4f,
            limb1: 0xd3797f05c8fb84f6b630dfb,
            limb2: 0x2dffde2d6c7e43ff,
        },
        r1a0: u288 {
            limb0: 0xc55d2eb1ea953275e780e65b,
            limb1: 0xe141cf680cab57483c02e4c7,
            limb2: 0x1b71395ce5ce20ae,
        },
        r1a1: u288 {
            limb0: 0xe4fab521f1212a1d301065de,
            limb1: 0x4f8d31c78df3dbe4ab721ef2,
            limb2: 0x2828f21554706a0e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8cefc2f2af2a3082b790784e,
            limb1: 0x97ac13b37c6fbfc736a3d456,
            limb2: 0x683b1cdffd60acd,
        },
        r0a1: u288 {
            limb0: 0xa266a8188a8c933dcffe2d02,
            limb1: 0x18d3934c1838d7bce81b2eeb,
            limb2: 0x206ac5cdda42377,
        },
        r1a0: u288 {
            limb0: 0x90332652437f6e177dc3b28c,
            limb1: 0x75bd8199433d607735414ee8,
            limb2: 0x29d6842d8298cf7e,
        },
        r1a1: u288 {
            limb0: 0xadedf46d8ea11932db0018e1,
            limb1: 0xbc7239ae9d1453258037befb,
            limb2: 0x22e7ebdd72c6f7a1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5cacd6bc11f9cdc95b117722,
            limb1: 0x32321d37468a2347955e4a90,
            limb2: 0x209b9ef12bf8bddc,
        },
        r0a1: u288 {
            limb0: 0x1a734ea686e5dff3c3848073,
            limb1: 0x305a91a387904acb3ed8e072,
            limb2: 0x20b1af159295248b,
        },
        r1a0: u288 {
            limb0: 0x211e866f2498be575d9f83d1,
            limb1: 0xc9eb14a4bbb219b258e403e9,
            limb2: 0x13d201749671d390,
        },
        r1a1: u288 {
            limb0: 0xf028717e7c01f55e0b67f7f9,
            limb1: 0x5a20e7c577cb8c94138b8dee,
            limb2: 0x2561e72151bf9f21,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3b918959369a10b9fd646e58,
            limb1: 0xfb621f46619ca19f23f7fab9,
            limb2: 0x2fb13ee538585df9,
        },
        r0a1: u288 {
            limb0: 0x70ce1cbc286dabd41e3ce1d8,
            limb1: 0xb207ca89b2d0a4a3d7e584c8,
            limb2: 0x165cb53b7ac3f1b1,
        },
        r1a0: u288 {
            limb0: 0xe041adc4d0b521f0254998cd,
            limb1: 0x4fb4ee68f5303c74fd649827,
            limb2: 0x429977cb97d7516,
        },
        r1a1: u288 {
            limb0: 0x2fd6149e4eb752a55b5a37ea,
            limb1: 0xf112ed55793ae16b31c565b1,
            limb2: 0x2388dc17d555b9f7,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x348e15357d9299e582033136,
            limb1: 0x53578c46b15abb39da35a56e,
            limb2: 0x1043b711f86bb33f,
        },
        r0a1: u288 {
            limb0: 0x9fa230a629b75217f0518e7c,
            limb1: 0x77012a4bb8751322a406024d,
            limb2: 0x121e2d845d972695,
        },
        r1a0: u288 {
            limb0: 0x5600f2d51f21d9dfac35eb10,
            limb1: 0x6fde61f876fb76611fb86c1a,
            limb2: 0x2bf4fbaf5bd0d0df,
        },
        r1a1: u288 {
            limb0: 0xd732aa0b6161aaffdae95324,
            limb1: 0xb3c4f8c3770402d245692464,
            limb2: 0x2a0f1740a293e6f0,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x47195bb385e206862bf29393,
            limb1: 0xf9011c63b73209944d8a46ca,
            limb2: 0x138e225bca15ea84,
        },
        r0a1: u288 {
            limb0: 0xae497a735cb1c8fce81dd820,
            limb1: 0x8cab175d1a274df1660cdfdb,
            limb2: 0x1496f5e06e823595,
        },
        r1a0: u288 {
            limb0: 0x7bb1da8c74e81c661ebb08c4,
            limb1: 0x8d1477a6be97df7548d027c1,
            limb2: 0x11e11ff781280b73,
        },
        r1a1: u288 {
            limb0: 0xdb91ad5cbc09660ca9282a20,
            limb1: 0xa70d250acf70ac60ca45bb27,
            limb2: 0xd321453f8b7e345,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xa9e2efa41aaa98ab59728940,
            limb1: 0x163c0425f66ce72daef2f53e,
            limb2: 0x2feaf1b1770aa7d8,
        },
        r0a1: u288 {
            limb0: 0x3bb7afd3c0a79b6ac2c4c063,
            limb1: 0xee5cb42e8b2bc999e312e032,
            limb2: 0x1af2071ae77151c3,
        },
        r1a0: u288 {
            limb0: 0x1cef1c0d8956d7ceb2b162e7,
            limb1: 0x202b4af9e51edfc81a943ded,
            limb2: 0xc9e943ffbdcfdcb,
        },
        r1a1: u288 {
            limb0: 0xe18b1b34798b0a18d5ad43dd,
            limb1: 0x55e8237731941007099af6b8,
            limb2: 0x1472c0290db54042,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x5f51ce0c875571c15686ed5,
            limb1: 0xe77d695b75e28ddb60e321e5,
            limb2: 0x21c8b65c9cb8bf1e,
        },
        r0a1: u288 {
            limb0: 0xa67bc33845bd05fb7ba14831,
            limb1: 0x191287aa0b32b9f313bca141,
            limb2: 0x1d687245b80d0295,
        },
        r1a0: u288 {
            limb0: 0x73637e91b18840b6bc0acc0c,
            limb1: 0xf2cc2405b88279d94e42595,
            limb2: 0x222f8d44f55ba37f,
        },
        r1a1: u288 {
            limb0: 0x1e9806bbb17324fac6a6ab77,
            limb1: 0x70d103c49f723921596bc666,
            limb2: 0x1c0d166b59765efc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb4c7963e0d1dc082de0725e,
            limb1: 0x375a7a3d765918de24804223,
            limb2: 0xf177b77b031596d,
        },
        r0a1: u288 {
            limb0: 0x87a7b9c5f10500b0b40d7a1e,
            limb1: 0x6f234d1dc7f1394b55858810,
            limb2: 0x26288146660a3914,
        },
        r1a0: u288 {
            limb0: 0xa6308c89cebe40447abf4a9a,
            limb1: 0x657f0fdda13b1f8ee314c22,
            limb2: 0x1701aabc250a9cc7,
        },
        r1a1: u288 {
            limb0: 0x9db9bf660dc77cbe2788a755,
            limb1: 0xbdf9c1c15a4bd502a119fb98,
            limb2: 0x14b4de3d26bd66e1,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x53c49c62ca96007e14435295,
            limb1: 0x85aeb885e4123ca8d3232fdf,
            limb2: 0x750017ce108abf3,
        },
        r0a1: u288 {
            limb0: 0xba6bf3e25d370182e4821239,
            limb1: 0x39de83bf370bd2ba116e8405,
            limb2: 0x2b8417a72ba6d940,
        },
        r1a0: u288 {
            limb0: 0xa922f50550d349849b14307b,
            limb1: 0x569766b6feca6143a5ddde9d,
            limb2: 0x2c3c6765b25a01d,
        },
        r1a1: u288 {
            limb0: 0x6016011bdc3b506563b0f117,
            limb1: 0xbab4932beab93dde9b5b8a5c,
            limb2: 0x1bf3f698de0ace60,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xbf627ba8588f8b742cddf1a5,
            limb1: 0x5c40f0426f7dd1385592952,
            limb2: 0x5f327b3713b28df,
        },
        r0a1: u288 {
            limb0: 0x80b7ea7f6fcf5d7f7c041c8e,
            limb1: 0x6b6a87aec32d53ba39c3fb88,
            limb2: 0x129d51b6addd4483,
        },
        r1a0: u288 {
            limb0: 0x9f0d4365f7ed98cc6381f49e,
            limb1: 0x9513319fa9b00b198f7910d4,
            limb2: 0x2360c8f53b98fbd3,
        },
        r1a1: u288 {
            limb0: 0xa78e734acb2181f690a26c87,
            limb1: 0xb6cf120bdda09c0a7e6b1b79,
            limb2: 0x273064d8763ffd95,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2c01c6ea5e1f19b5f022010a,
            limb1: 0xa5bd885846036eb994722dc5,
            limb2: 0x18d27aa62093cc43,
        },
        r0a1: u288 {
            limb0: 0xc12801217883c290210772b,
            limb1: 0x5e3107d7acfde8117618b987,
            limb2: 0x24b4365013d50a9f,
        },
        r1a0: u288 {
            limb0: 0x7af540a38d58a85beea063e9,
            limb1: 0x141d7a9b4dffb4f01e47089f,
            limb2: 0x2963bfbf4c0a9bb7,
        },
        r1a1: u288 {
            limb0: 0xdd2d9400b532e288d79c11c9,
            limb1: 0x40c3ed3f2d5fa4054a0451e9,
            limb2: 0x2fb84c7ae97a7f10,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb9f05ffda3ee208f990ff3a8,
            limb1: 0x6201d08440b28ea672b9ea93,
            limb2: 0x1ed60e5a5e778b42,
        },
        r0a1: u288 {
            limb0: 0x8e8468b937854c9c00582d36,
            limb1: 0x7888fa8b2850a0c555adb743,
            limb2: 0xd1342bd01402f29,
        },
        r1a0: u288 {
            limb0: 0xf5c4c66a974d45ec754b3873,
            limb1: 0x34322544ed59f01c835dd28b,
            limb2: 0x10fe4487a871a419,
        },
        r1a1: u288 {
            limb0: 0xedf4af2df7c13d6340069716,
            limb1: 0x8592eea593ece446e8b2c83b,
            limb2: 0x12f9280ce8248724,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d875c14cabef053a7fa1974,
            limb1: 0x38adea383476fdf55b59e6ae,
            limb2: 0x271770e2e2c7c025,
        },
        r0a1: u288 {
            limb0: 0xb2a59c3538c54825df18a113,
            limb1: 0xa0b1e0685f0430f4b0f7a044,
            limb2: 0x25826a7fe6f2f829,
        },
        r1a0: u288 {
            limb0: 0x9d14c38b9656f14a3d7ddc86,
            limb1: 0x8ff72687b49da21bfbf96ae2,
            limb2: 0x1520144a4f47aa23,
        },
        r1a1: u288 {
            limb0: 0xb5c26ab0dd19493c13f52eb2,
            limb1: 0xccf364316f36d404f1a20c5a,
            limb2: 0x237f944372ca990,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe67f72c6d45f1bb04403139f,
            limb1: 0x9233e2a95d3f3c3ff2f7e5b8,
            limb2: 0x1f931e8e4343b028,
        },
        r0a1: u288 {
            limb0: 0x20ef53907af71803ce3ca5ca,
            limb1: 0xd99b6637ee9c73150b503ea4,
            limb2: 0x1c9759def8a98ea8,
        },
        r1a0: u288 {
            limb0: 0xa0a3b24c9089d224822fad53,
            limb1: 0xdfa2081342a7a895062f3e50,
            limb2: 0x185e8cf6b3e494e6,
        },
        r1a1: u288 {
            limb0: 0x8752a12394b29d0ba799e476,
            limb1: 0x1493421da067a42e7f3d0f8f,
            limb2: 0x67e7fa3e3035edf,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9130ffdae3cfa4b33f5a0fb4,
            limb1: 0xfddb5aa564b720807e514d94,
            limb2: 0x14762f9ad3212407,
        },
        r0a1: u288 {
            limb0: 0xb9c527722811a295e9663ae8,
            limb1: 0x2fb6f4b7b141313be95e60bb,
            limb2: 0x16aeec7021aa165,
        },
        r1a0: u288 {
            limb0: 0xe78cd96b6b293e3539063c10,
            limb1: 0x7b79a0bf7107595cdc390af0,
            limb2: 0x2b3437e34b345fbd,
        },
        r1a1: u288 {
            limb0: 0x2371657b9c6ce9ff4dc7fc97,
            limb1: 0x74cace79fd1248f48541a155,
            limb2: 0x159c725d849503a3,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x6d6138c95464e5e774ae7ba0,
            limb1: 0xe6ca73a5498e4ccd4bb68fc7,
            limb2: 0x15bf8aa8ed1beff6,
        },
        r0a1: u288 {
            limb0: 0xabd7c55a134ed405b4966d3c,
            limb1: 0xe69dd725ccc4f9dd537fe558,
            limb2: 0x2df4a03e2588a8f1,
        },
        r1a0: u288 {
            limb0: 0x7cf42890de0355ffc2480d46,
            limb1: 0xe33c2ad9627bcb4b028c2358,
            limb2: 0x2a18767b40de20bd,
        },
        r1a1: u288 {
            limb0: 0x79737d4a87fab560f3d811c6,
            limb1: 0xa88fee5629b91721f2ccdcf7,
            limb2: 0x2b51c831d3404d5e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2c887fe71af21684a4c8972e,
            limb1: 0xb46f158592a94a54bfba0ffe,
            limb2: 0x46795e35e63ea27,
        },
        r0a1: u288 {
            limb0: 0x4db7165815f70c5d55b4c7fa,
            limb1: 0xa05e31af904ba01f729fca05,
            limb2: 0x1b410d004e3f4a80,
        },
        r1a0: u288 {
            limb0: 0xee008c551e06f0bb67640172,
            limb1: 0x13b390c564334fe975b0f744,
            limb2: 0xe5ed88574fcb207,
        },
        r1a1: u288 {
            limb0: 0x6cc0120940eea9b3fd055983,
            limb1: 0xca042a6047326e1e7f67bf7a,
            limb2: 0x1b9e7dea2f2c0740,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x9812f6145cf7e949fa207f20,
            limb1: 0x4061c36b08d5bcd408b14f19,
            limb2: 0x8332e08b2eb51ed,
        },
        r0a1: u288 {
            limb0: 0xa4a7ae8f65ba180c523cb33,
            limb1: 0xb71fabbdc78b1128712d32a5,
            limb2: 0x2acd1052fd0fefa7,
        },
        r1a0: u288 {
            limb0: 0x6ea5598e221f25bf27efc618,
            limb1: 0xa2c2521a6dd8f306f86d6db7,
            limb2: 0x13af144288655944,
        },
        r1a1: u288 {
            limb0: 0xea469c4b390716a6810fff5d,
            limb1: 0xf8052694d0fdd3f40b596c20,
            limb2: 0x24d0ea6c86e48c5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e39be614d904bafea58a8cd,
            limb1: 0xf53f0a6a20a1f1783b0ea2d0,
            limb2: 0x99c451b7bb726d7,
        },
        r0a1: u288 {
            limb0: 0x28ec54a4ca8da838800c573d,
            limb1: 0xb78365fa47b5e192307b7b87,
            limb2: 0x2df87aa88e012fec,
        },
        r1a0: u288 {
            limb0: 0xfb7022881c6a6fdfb18de4aa,
            limb1: 0xb9bd30f0e93c5b93ad333bab,
            limb2: 0x1dd20cbccdeb9924,
        },
        r1a1: u288 {
            limb0: 0x16d8dfdf790a6be16a0e55ba,
            limb1: 0x90ab884395509b9a264472d4,
            limb2: 0xeaec571657b6e9d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x94bd2f2c7f91a0d6d4a33e0e,
            limb1: 0xe62d0bdb89b0908e36dbd43f,
            limb2: 0x2ad5e804fc60c531,
        },
        r0a1: u288 {
            limb0: 0x9e6f8b9337d905cd45896ea6,
            limb1: 0xc1efce968efa0b45f24f3fbb,
            limb2: 0x48430ee69263c1a,
        },
        r1a0: u288 {
            limb0: 0xa6695297e2b7c1cfaa3c6d00,
            limb1: 0x11430561c747437b040936d9,
            limb2: 0x22f1c2a8ed4c0adc,
        },
        r1a1: u288 {
            limb0: 0x92842ce194c51b03013724bc,
            limb1: 0x99c92831b5b0ad9833f1baae,
            limb2: 0x224f2ad52c142b0f,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8a410842416c2a45b13a439e,
            limb1: 0x10c9885016f24159a48b9a07,
            limb2: 0x8506cf42fb386bb,
        },
        r0a1: u288 {
            limb0: 0x74122519cfe30010b22cdbdb,
            limb1: 0x2dbf6b4eb325b5ef9c82c160,
            limb2: 0x2d51aeae12f018af,
        },
        r1a0: u288 {
            limb0: 0xf96dcbac0f5a6304ef4c06ab,
            limb1: 0x5d1c672c0fbeffeba3cecf7b,
            limb2: 0x29fb1e55c5a14814,
        },
        r1a1: u288 {
            limb0: 0x3afe157b6e4492b2ea4caa8a,
            limb1: 0x6a62ad32f0f62045483f4fef,
            limb2: 0x2a55c3b39ca370cd,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xce78fc6505db036c10fac771,
            limb1: 0x61f8c0bc7f60ad6415d5e419,
            limb2: 0x59009c5cf9ea663,
        },
        r0a1: u288 {
            limb0: 0xb3b3f697fc34d64ba053b914,
            limb1: 0x317af5815ce5bfffc5a6bc97,
            limb2: 0x23f97fee4deda847,
        },
        r1a0: u288 {
            limb0: 0xf559e09cf7a02674ac2fa642,
            limb1: 0x4fa7548b79cdd054e203689c,
            limb2: 0x2173b379d546fb47,
        },
        r1a1: u288 {
            limb0: 0x758feb5b51caccff9da0f78f,
            limb1: 0xd7f37a1008233b74c4894f55,
            limb2: 0x917c640b4b9627e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x8835cb413fd855572f44b2bf,
            limb1: 0x851b6a8e40e1d5741e12827f,
            limb2: 0x754b499ed19c289,
        },
        r0a1: u288 {
            limb0: 0x27298ae3b325c3050caa4924,
            limb1: 0x922e39610e9b026510efbacf,
            limb2: 0x2d3c944ebb09eba5,
        },
        r1a0: u288 {
            limb0: 0x38ff3e8acaa10ff719801b63,
            limb1: 0xc965baa6e66c6872b2d662cc,
            limb2: 0x96ee5e8b283d465,
        },
        r1a1: u288 {
            limb0: 0xfcf1f25a7ed1c725cbf52a7f,
            limb1: 0xc75517b8a606b51f95448d31,
            limb2: 0x2d0cf9931d2dac09,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72548e0d946b796842cfecd8,
            limb1: 0x78b54b355e3c26476b0fab82,
            limb2: 0x2dc9f32c90b6ba31,
        },
        r0a1: u288 {
            limb0: 0xa943be83a6fc90414320753b,
            limb1: 0xd708fde97241095833ce5a08,
            limb2: 0x142111e6a73d2e82,
        },
        r1a0: u288 {
            limb0: 0xc79e8d5465ec5f28781e30a2,
            limb1: 0x697fb9430b9ad050ced6cce,
            limb2: 0x1a9d647149842c53,
        },
        r1a1: u288 {
            limb0: 0x9bab496952559362586725cd,
            limb1: 0xbe78e5a416d9665be64806de,
            limb2: 0x147b550afb4b8b84,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x345bcfee80143deeffb2f344,
            limb1: 0xec4d6d9e5bb0a2635286d832,
            limb2: 0x23b378c64e551626,
        },
        r0a1: u288 {
            limb0: 0x83046306c64da7b4120c2d86,
            limb1: 0x12deec7b446c21533df84666,
            limb2: 0x2779fd0986a1f631,
        },
        r1a0: u288 {
            limb0: 0xed6109a3bbcbd071ecac30ef,
            limb1: 0xf75ec6cfeb157dcfd72ab5a1,
            limb2: 0x1cb63d38c51714f0,
        },
        r1a1: u288 {
            limb0: 0xf2876cc0f1e2e818b75ecf34,
            limb1: 0x55d434e0c741d0bc1c44c05,
            limb2: 0x2c3912e818cd9239,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1422e11013fe6cdd7f843391,
            limb1: 0xfb96092ab69fc530e27d8d8e,
            limb2: 0xe39e04564fedd0,
        },
        r0a1: u288 {
            limb0: 0xbd4e81e3b4db192e11192788,
            limb1: 0x805257d3c2bdbc344a15ce0d,
            limb2: 0x10ddd4f47445106b,
        },
        r1a0: u288 {
            limb0: 0x87ab7f750b693ec75bce04e1,
            limb1: 0x128ba38ebed26d74d26e4d69,
            limb2: 0x2f1d22a64c983ab8,
        },
        r1a1: u288 {
            limb0: 0x74207c17f5c8335183649f77,
            limb1: 0x7144cd3520ac2e1be3204133,
            limb2: 0xb38d0645ab3499d,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x3217f50e959c9723010ea711,
            limb1: 0x454327c07ab0b67b644b4195,
            limb2: 0x207b9af208443f09,
        },
        r0a1: u288 {
            limb0: 0xc4f4aa5c8a3fca52d3351b0e,
            limb1: 0x479806420b8d5dc5835917d3,
            limb2: 0xc9cb9d99f2c8465,
        },
        r1a0: u288 {
            limb0: 0xb115074e54a233406275d0fa,
            limb1: 0x281e881238ef415862a00ddc,
            limb2: 0x24b5f590455d6726,
        },
        r1a1: u288 {
            limb0: 0xa3130710599c4591066235a7,
            limb1: 0xd125fdb7416387958b1b65b9,
            limb2: 0x19f03677e5e5c137,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x49173a889c697b0ab07f35bc,
            limb1: 0xdcffb65f4b4c21ced6b623af,
            limb2: 0x1366d12ee6022f7b,
        },
        r0a1: u288 {
            limb0: 0x285fdce362f7a79b89c49b5c,
            limb1: 0xae9358c8eaf26e2fed7353f5,
            limb2: 0x21c91fefaf522b5f,
        },
        r1a0: u288 {
            limb0: 0x748798f96436e3b18c64964a,
            limb1: 0xfc3bb221103d3966d0510599,
            limb2: 0x167859ae2ebc5e27,
        },
        r1a1: u288 {
            limb0: 0xe3b55b05bb30e23fa7eba05b,
            limb1: 0xa5fc8b7f7bc6abe91c90ddd5,
            limb2: 0xe0da83c6cdebb5a,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x30a4abff5957209783681bfb,
            limb1: 0x82d868d5ca421e4f1a0daf79,
            limb2: 0x1ba96ef98093d510,
        },
        r0a1: u288 {
            limb0: 0xd9132c7f206a6c036a39e432,
            limb1: 0x8a2dfb94aba29a87046110b8,
            limb2: 0x1fad2fd5e5e37395,
        },
        r1a0: u288 {
            limb0: 0x76b136dc82b82e411b2c44f6,
            limb1: 0xe405f12052823a54abb9ea95,
            limb2: 0xf125ba508c26ddc,
        },
        r1a1: u288 {
            limb0: 0x1bae07f5f0cc48e5f7aac169,
            limb1: 0x47d1288d741496a960e1a979,
            limb2: 0xa0911f6cc5eb84e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x256d4b2022b276434948d922,
            limb1: 0xabe658c12ffc42b599dbeba,
            limb2: 0x155d55f077a632f5,
        },
        r0a1: u288 {
            limb0: 0xbbe6522b0f5e75a3a39fc607,
            limb1: 0xf27cb077356e2e8fd88ec50b,
            limb2: 0xd61c11906132ac5,
        },
        r1a0: u288 {
            limb0: 0x2518f9b5cfe39b07b3622564,
            limb1: 0xbd54da929c44587ebbb08d0,
            limb2: 0xed50ad5439f3e43,
        },
        r1a1: u288 {
            limb0: 0x9dd2763bfbb3f0bb15f7c13d,
            limb1: 0xc73a6358835cb6833db00ca0,
            limb2: 0x25a6cadce64b41f9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x90493c227f595082f814626a,
            limb1: 0x3e22e13bcdded9771b8555ef,
            limb2: 0x4ea66a828cef1b0,
        },
        r0a1: u288 {
            limb0: 0x3d8c41f7e21638f1915315c2,
            limb1: 0x4696e7560bea959ee878aba7,
            limb2: 0x2de310fda9fa2dfd,
        },
        r1a0: u288 {
            limb0: 0xa63c91bc1c33d405bc1d1b3,
            limb1: 0xf732ecf01d8284f8eb69139d,
            limb2: 0x5ad6ae5bbac7c18,
        },
        r1a1: u288 {
            limb0: 0xed576b092641189fd5b7267a,
            limb1: 0x36863f1baebd3d3fcb756e8,
            limb2: 0x1075f156ae59ae36,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e7b3a5a35456f42e87968e6,
            limb1: 0xb4303f5093c3a460674a2fcd,
            limb2: 0x2b5331f03b8fa15f,
        },
        r0a1: u288 {
            limb0: 0x7cea371d64d8bd0fc5b9427e,
            limb1: 0x76208e15fc175e352c274fbe,
            limb2: 0x5ceb46647d41234,
        },
        r1a0: u288 {
            limb0: 0x6cdac06bfcf041a30435a560,
            limb1: 0x15a7ab7ed1df6d7ed12616a6,
            limb2: 0x2520b0f462ad4724,
        },
        r1a1: u288 {
            limb0: 0xe8b65c5fff04e6a19310802f,
            limb1: 0xc96324a563d5dab3cd304c64,
            limb2: 0x230de25606159b1e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd1370870df6c0ed162edd187,
            limb1: 0x19d7d2a54ffde4e6e2fa0340,
            limb2: 0x22abe238859a9210,
        },
        r0a1: u288 {
            limb0: 0xbdfc33cf1cff79e779491419,
            limb1: 0x96d97c2026e268e79b586911,
            limb2: 0x294e5e5c9541572f,
        },
        r1a0: u288 {
            limb0: 0x1a85b663d70a4559e799af6e,
            limb1: 0xa124ae4ce23932512fd554c8,
            limb2: 0x23bd7611b133f630,
        },
        r1a1: u288 {
            limb0: 0x84fb3e88566e6d2a6774bbe7,
            limb1: 0xfb48d1173f15520c9b606fa7,
            limb2: 0x1ff70617d7977c50,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb2236e5462d1e11842039bb5,
            limb1: 0x8d746dd0bb8bb2a455d505c1,
            limb2: 0x2fd3f4a905e027ce,
        },
        r0a1: u288 {
            limb0: 0x3d6d9836d71ddf8e3b741b09,
            limb1: 0x443f16e368feb4cb20a5a1ab,
            limb2: 0xb5f19dda13bdfad,
        },
        r1a0: u288 {
            limb0: 0x4e5612c2b64a1045a590a938,
            limb1: 0xbca215d075ce5769db2a29d7,
            limb2: 0x161e651ebdfb5065,
        },
        r1a1: u288 {
            limb0: 0xc02a55b6685351f24e4bf9c7,
            limb1: 0x4134240119050f22bc4991c8,
            limb2: 0x300bd9f8d76bbc11,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xe9296a3a3aed4c4143d2e0ba,
            limb1: 0x7de973514b499b2da739b3e6,
            limb2: 0x1b4b807986fcdee0,
        },
        r0a1: u288 {
            limb0: 0xb9295fecce961afe0c5e6dad,
            limb1: 0xc4e30c322bcae6d526c4de95,
            limb2: 0x1fee592f513ed6b2,
        },
        r1a0: u288 {
            limb0: 0x7245f5e5e803d0d448fafe21,
            limb1: 0xcbdc032ecb3b7a63899c53d0,
            limb2: 0x1fde9ffc17accfc3,
        },
        r1a1: u288 {
            limb0: 0x8edcc1b2fdd35c87a7814a87,
            limb1: 0x99d54b5c2fe171c49aa9cb08,
            limb2: 0x130ef740e416a6fe,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf5f6db9042a6a661ca5669d4,
            limb1: 0x35f5820bf600b4b408419123,
            limb2: 0x24b1e629b51c1716,
        },
        r0a1: u288 {
            limb0: 0xcdacb3f48257f557d855a61,
            limb1: 0x8fe3c8716665a15a630687d6,
            limb2: 0x4c8efe044171b46,
        },
        r1a0: u288 {
            limb0: 0xab2402728714830be34a0633,
            limb1: 0x3ed24c72e8dbf78e97a1bbd3,
            limb2: 0x2f0add35c3abe30c,
        },
        r1a1: u288 {
            limb0: 0x2f3c09b82245a3259293ea04,
            limb1: 0x4e8e433efa965792f2582771,
            limb2: 0x287703d3397347ed,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2e56ecbc1c3b170dca92b5a,
            limb1: 0xa8353747f7aa23fc267487b6,
            limb2: 0x16c53810ff9f45bd,
        },
        r0a1: u288 {
            limb0: 0xe854f607bb06689014901895,
            limb1: 0x7212ffb636c4cb9da780e914,
            limb2: 0x6d7082a818fdbc1,
        },
        r1a0: u288 {
            limb0: 0x453c9ad790acfe2a0352cd3a,
            limb1: 0xa8d6fb19895cc58723f1583d,
            limb2: 0x194b6c2b71044f5a,
        },
        r1a1: u288 {
            limb0: 0x635f0a321d29b84539c3b9eb,
            limb1: 0x709fe2fbdb876c9fe5c66733,
            limb2: 0xdece04aa975539b,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x537ecf0916b38aeea21d4e47,
            limb1: 0x181a00de27ba4be1b380d6c8,
            limb2: 0x8c2fe2799316543,
        },
        r0a1: u288 {
            limb0: 0xe68fff5ee73364fff3fe403b,
            limb1: 0x7b8685c8a725ae79cfac8f99,
            limb2: 0x7b4be349766aba4,
        },
        r1a0: u288 {
            limb0: 0xdf7c93c0095545ad5e5361ea,
            limb1: 0xce316c76191f1e7cd7d03f3,
            limb2: 0x22ea21f18ddec947,
        },
        r1a1: u288 {
            limb0: 0xa19620b4c32db68cc1c2ef0c,
            limb1: 0xffa1e4be3bed5faba2ccbbf4,
            limb2: 0x16fc78a64c45f518,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x2b6af476f520b4bf804415bc,
            limb1: 0xd949ee7f9e8874698b090fca,
            limb2: 0x34db5e5ec2180cf,
        },
        r0a1: u288 {
            limb0: 0x3e06a324f038ac8abcfb28d7,
            limb1: 0xc2e6375b7a83c0a0145f8942,
            limb2: 0x2247e79161483763,
        },
        r1a0: u288 {
            limb0: 0x708773d8ae3a13918382fb9d,
            limb1: 0xaf83f409556e32aa85ae92bf,
            limb2: 0x9af0a924ae43ba,
        },
        r1a1: u288 {
            limb0: 0xa6fded212ff5b2ce79755af7,
            limb1: 0x55a2adfb2699ef5de6581b21,
            limb2: 0x2476e83cfe8daa5c,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xd9d5e547f14f32ff53eefeda,
            limb1: 0x810a1d9ad2ab26bbb25d8f1e,
            limb2: 0x1059761b04d3911e,
        },
        r0a1: u288 {
            limb0: 0x88cc7cf428b2de1fecf62fe,
            limb1: 0x3822587344a30aa75e23316f,
            limb2: 0x21484c4e0960a831,
        },
        r1a0: u288 {
            limb0: 0x2884926137d5e70ac2e6ae09,
            limb1: 0x26b50f88e0393d2478b306b4,
            limb2: 0x291a2779ab38ba5b,
        },
        r1a1: u288 {
            limb0: 0x1e08081b13fcb4f0020634e7,
            limb1: 0x8ce8f03154a9ee53a0b94bf5,
            limb2: 0x2c1bc15742c5d8a4,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xb95765b15075fa116a13b5ea,
            limb1: 0x29f6552235f4a3c57dcabc0a,
            limb2: 0xf5573cf5b360970,
        },
        r0a1: u288 {
            limb0: 0xd443290f0f3b7621685fb49c,
            limb1: 0xa0b3424e0ff91103155a5020,
            limb2: 0x108f72cf18bc077,
        },
        r1a0: u288 {
            limb0: 0x81242ac9eca330df63592f27,
            limb1: 0xcc32024eb6f4e988b2f83c6e,
            limb2: 0x29815dd69fe114a1,
        },
        r1a1: u288 {
            limb0: 0xef981482ad21997be04af572,
            limb1: 0xe981059e9fde50a9ae0a6bea,
            limb2: 0x1a74984975a06ad9,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x1c4759bcf7c607fe3f839d4d,
            limb1: 0xea91f311da73327e2ed40785,
            limb2: 0x2017052c72360f42,
        },
        r0a1: u288 {
            limb0: 0x38cf8a4368c0709980199fc3,
            limb1: 0xfc9047885996c19e84d7d4ea,
            limb2: 0x1795549eb0b97783,
        },
        r1a0: u288 {
            limb0: 0xb70f7ecfbec0eaf46845e8cc,
            limb1: 0x9ddf274c2a9f89ea3bc4d66f,
            limb2: 0xcc6f106abfcf377,
        },
        r1a1: u288 {
            limb0: 0xf6ff11ce29186237468c2698,
            limb1: 0x5c629ad27bb61e4826bb1313,
            limb2: 0x2014c6623f1fb55e,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x98ccc75eac2dc79881f9bd9,
            limb1: 0x98bf5c4293af3ce889691b0b,
            limb2: 0x14d5c91783c5c854,
        },
        r0a1: u288 {
            limb0: 0x3c79dfbda32b397ceb1dcc77,
            limb1: 0xa9509cdbf4be2851e1fe6f,
            limb2: 0x1f8986ca20334106,
        },
        r1a0: u288 {
            limb0: 0xde9bb5001c6d7c8e2d1c5b08,
            limb1: 0xcec09a3a0e3c86ee9c9d1a11,
            limb2: 0x23f5f0efd9e1f69d,
        },
        r1a1: u288 {
            limb0: 0xa7f39385d4065540731cecfb,
            limb1: 0xdd28231103fc04750547e9d3,
            limb2: 0x846a870340e2e50,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xc648054e4b6134bbfd68487f,
            limb1: 0xdf0506dad3f3d098c13a6386,
            limb2: 0x26bebeb6f46c2e8c,
        },
        r0a1: u288 {
            limb0: 0x9d0cdb28a94204776c6e6ba6,
            limb1: 0x303f02dfe619752b1607951d,
            limb2: 0x1127d8b17ef2c064,
        },
        r1a0: u288 {
            limb0: 0xe34ca1188b8db4e4694a696c,
            limb1: 0x243553602481d9b88ca1211,
            limb2: 0x1f8ef034831d0132,
        },
        r1a1: u288 {
            limb0: 0xe3a5dfb1785690dad89ad10c,
            limb1: 0xd690b583ace24ba033dd23e0,
            limb2: 0x405d0709e110c03,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x4ffddf05723988c754444fd0,
            limb1: 0x11a62b95c0687479f8493036,
            limb2: 0xc5ed1690dfc19f,
        },
        r0a1: u288 {
            limb0: 0x89296a7e735dd4f3d3269127,
            limb1: 0x3bbeadd3eaa56e9ee109b007,
            limb2: 0x2ec09af5d83dbe9c,
        },
        r1a0: u288 {
            limb0: 0xc125fec52ef7d1cbf7b72543,
            limb1: 0x3ade64db8bb2eeebc2314e4f,
            limb2: 0xa36d6a61278e419,
        },
        r1a1: u288 {
            limb0: 0xe36540f683a13e62e92ab76,
            limb1: 0x7215643f8d7de2eda5d0235c,
            limb2: 0x134f6e14af5c878,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x72cc2cef2785ce4ff4e9b7af,
            limb1: 0x60ed5b9c207d7f31fb6234ab,
            limb2: 0x1bb17a4bc7b643ed,
        },
        r0a1: u288 {
            limb0: 0x9424eb15b502cde7927c7530,
            limb1: 0xa0e33edbbaa9de8e9c206059,
            limb2: 0x2b9a3a63bbf4af99,
        },
        r1a0: u288 {
            limb0: 0x423811cb6386e606cf274a3c,
            limb1: 0x8adcc0e471ecfe526f56dc39,
            limb2: 0x9169a8660d14368,
        },
        r1a1: u288 {
            limb0: 0xf616c863890c3c8e33127931,
            limb1: 0xcc9414078a6da6989dae6b91,
            limb2: 0x594d6a7e6b34ab2,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf6a865f8a3b57ad4851012b4,
            limb1: 0xe905ee069ddf48b4aa949bfa,
            limb2: 0x19cdc25aae2639c9,
        },
        r0a1: u288 {
            limb0: 0xd4b169a184611f3c288aec2,
            limb1: 0xacff4e6abc62dd90c6545ff5,
            limb2: 0x6e051817dd4187b,
        },
        r1a0: u288 {
            limb0: 0x59b1681f413b79b8467db42b,
            limb1: 0x3ed9e4018e36bcb73f863a34,
            limb2: 0x2e91a6c1c385eae4,
        },
        r1a1: u288 {
            limb0: 0xd476b01c7cd76b33ecade338,
            limb1: 0x2513ee64e78cec8d2f7d5242,
            limb2: 0x15846eda2a3aab75,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xf2d619ae78049bf9141c35cf,
            limb1: 0x717f8b10d469a1ee2d91f191,
            limb2: 0x2c72c82fa8afe345,
        },
        r0a1: u288 {
            limb0: 0xb89321223b82a2dc793c0185,
            limb1: 0x71506a0cf4adb8e51bb7b759,
            limb2: 0x2c13b92a98651492,
        },
        r1a0: u288 {
            limb0: 0x4947ef2c89276f77f9d20942,
            limb1: 0xb454d68685ab6b6976e71ec5,
            limb2: 0x19a938d0e78a3593,
        },
        r1a1: u288 {
            limb0: 0xbe883eb119609b489c01c905,
            limb1: 0xaa06779922047f52feac5ce6,
            limb2: 0x76977a3015dc164,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x43a96a588005043a46aadf2c,
            limb1: 0xa37b89d8a1784582f0c52126,
            limb2: 0x22e9ef3f5d4b2297,
        },
        r0a1: u288 {
            limb0: 0x8c6f6d8474cf6e5a58468a31,
            limb1: 0xeb1ce6ac75930ef1c79b07e5,
            limb2: 0xf49839a756c7230,
        },
        r1a0: u288 {
            limb0: 0x82b84693a656c8e8c1f962fd,
            limb1: 0x2c1c8918ae80282208b6b23d,
            limb2: 0x14d3504b5c8d428f,
        },
        r1a1: u288 {
            limb0: 0x60ef4f4324d5619b60a3bb84,
            limb1: 0x6d3090caefeedbc33638c77a,
            limb2: 0x159264c370c89fec,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0xdbd57ff77afda5ef835c7eca,
            limb1: 0x1f448e231d6916c637cbb8a7,
            limb2: 0x1ee73c805f0d8e7f,
        },
        r0a1: u288 {
            limb0: 0xb55183080f98abec2ae03f3f,
            limb1: 0x2f1e5ad96b924a9d18d0c339,
            limb2: 0x2a6b402180808a2,
        },
        r1a0: u288 {
            limb0: 0x81802a9a1867a10771164bbc,
            limb1: 0xc945fd3ff630bd9d48bceba4,
            limb2: 0x28bc0ba1480ca546,
        },
        r1a1: u288 {
            limb0: 0x16827c12b592770159861100,
            limb1: 0x2e5fff7bc0958a89f06ff30f,
            limb2: 0x1a135a26dd1030dc,
        },
    },
    G2Line {
        r0a0: u288 {
            limb0: 0x55cbdbabed591ba43ceff75b,
            limb1: 0xda0bcc807bd09e01ee2ac03a,
            limb2: 0x1f5cf3abed63909b,
        },
        r0a1: u288 {
            limb0: 0x5fc440f5be3a3ccaf26e1271,
            limb1: 0x3ccca432802a8a8358a1b83f,
            limb2: 0x1fc20857347b4802,
        },
        r1a0: u288 {
            limb0: 0x39da29a1ba553770c56486d4,
            limb1: 0xefe4580ed6218bfda92cccad,
            limb2: 0x2aff1ee46d7db38,
        },
        r1a1: u288 {
            limb0: 0xd5ac0c0449d50afd3d0e6c40,
            limb1: 0xf53f26ed4a220444cd05f98f,
            limb2: 0x2655a341696ed993,
        },
    },
];


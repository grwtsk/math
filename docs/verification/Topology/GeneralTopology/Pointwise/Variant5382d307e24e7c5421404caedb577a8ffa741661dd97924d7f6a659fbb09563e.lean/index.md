# Verification target: GRWTSK.Topology.GeneralTopology.Pointwise.Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450e33ba1426fcf856f64361c0d0859068cbaf73",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450e33ba1426fcf856f64361c0d0859068cbaf73`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Bounded` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Uniform` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Bornology.IsBounded.mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/bornology-isbounded-mul--2d7c6481ca580ad1f461f62e.md) | 37 | `result-track:2d7c6481ca580ad1f461f62e4cfe946c21c4e033274ae394623a1ee4d8c5a6e5` |
| 2 | `theorem` | [Bornology.IsBounded.of_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/bornology-isbounded-of-mul--0e40ce14ecb9883d72ed02a2.md) | 45 | `result-track:0e40ce14ecb9883d72ed02a2e45c8aa2e8e6abd2fd8819b2409c1344c437096a` |
| 3 | `theorem` | [Bornology.IsBounded.inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/bornology-isbounded-inv--a6f7e6c83db5396d875e7dab.md) | 49 | `result-track:a6f7e6c83db5396d875e7dabdbb21e13bef599639c52275fddca4aee71efe7e1` |
| 4 | `theorem` | [Bornology.IsBounded.div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/bornology-isbounded-div--baaa696ad97ea7737765b27e.md) | 54 | `result-track:baaa696ad97ea7737765b27e1792d0118ed21c1936e1eaaf7c5021d86f1835f5` |
| 5 | `theorem` | [infEdist_inv_inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/infedist-inv-inv--ec465283bff1aae9e94ae55d.md) | 68 | `result-track:ec465283bff1aae9e94ae55d1f25f64bc72c77249f659e8336f78c554e064eca` |
| 6 | `theorem` | [infEdist_inv](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/infedist-inv--924fdf52ffc7b2d275c18e5f.md) | 72 | `result-track:924fdf52ffc7b2d275c18e5fe5c713b3e5723ad7ebd991be5ec4b4ba42b8febc` |
| 7 | `theorem` | [ediam_mul_le](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ediam-mul-le--14c5689de2ab3d55ca3b644f.md) | 76 | `result-track:14c5689de2ab3d55ca3b644f78860a2649d220b6078c0a36bbf24bfa5563b548` |
| 8 | `theorem` | [inv_thickening](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/inv-thickening--13c479e1dfa5e70c87763704.md) | 87 | `result-track:13c479e1dfa5e70c87763704be4be442181b8270237ff4395611e5bb33f3d177` |
| 9 | `theorem` | [inv_cthickening](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/inv-cthickening--b6174ae2db6e0b6e66751be8.md) | 92 | `result-track:b6174ae2db6e0b6e66751be84b4e36edc9a09e7dc60bdd24063cdaabd44f2b1d` |
| 10 | `theorem` | [inv_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/inv-ball--771df953d46d3a9287b76b04.md) | 97 | `result-track:771df953d46d3a9287b76b040cead129afdb08721825d00e4725e76a16fa30b7` |
| 11 | `theorem` | [inv_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/inv-closedball--25e64e02a9520a3e075a112c.md) | 100 | `result-track:25e64e02a9520a3e075a112c6a2e32a8dc7e3f2df4f42d0b14ccdfc643a01ccb` |
| 12 | `theorem` | [singleton_mul_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-mul-ball--a9499c39c85adbfc64c14184.md) | 104 | `result-track:a9499c39c85adbfc64c14184187786172fc825a239810319440867ffc33a2753` |
| 13 | `theorem` | [singleton_div_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-div-ball--2beb096b1d75e52f28cafab5.md) | 108 | `result-track:2beb096b1d75e52f28cafab55048db1c8ecb56f55ffc9c4dc533796d2215ff13` |
| 14 | `theorem` | [ball_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-mul-singleton--04e494559e6ec233c512edd1.md) | 112 | `result-track:04e494559e6ec233c512edd161ea7925a6ab791171d3f16a643adbb877a7a593` |
| 15 | `theorem` | [ball_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-div-singleton--a5b44c2400dbd75b81498f9b.md) | 116 | `result-track:a5b44c2400dbd75b81498f9b5d85faae504ef791da204c16b563e9b95490e9e0` |
| 16 | `theorem` | [singleton_mul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-mul-ball-one--d791b460e68abf1e44d94655.md) | 120 | `result-track:d791b460e68abf1e44d946554163088426a99348427144a263dff46e47981902` |
| 17 | `theorem` | [singleton_div_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-div-ball-one--17b380292706c4d0af0545ba.md) | 123 | `result-track:17b380292706c4d0af0545ba09d8112d5d40c827e1d92eed935ac78f00750566` |
| 18 | `theorem` | [ball_one_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-one-mul-singleton--b98a3e0d7b498df14c1aeabe.md) | 127 | `result-track:b98a3e0d7b498df14c1aeabe7cb69d7c5e60339a1c7369cc02f228b19230c445` |
| 19 | `theorem` | [ball_one_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-one-div-singleton--5082e240d8df9efe48d5d7cb.md) | 130 | `result-track:5082e240d8df9efe48d5d7cb25ee950cfcba1e744b750b3824f14fe614b479f9` |
| 20 | `theorem` | [smul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/smul-ball-one--af4b4aa44d46b6b9aceafa1a.md) | 134 | `result-track:af4b4aa44d46b6b9aceafa1aa0913faec8e28a6c6862f2180ac5df30a4cc1f8a` |
| 21 | `theorem` | [singleton_mul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-mul-closedball--79621b5e275f61557313e6b7.md) | 138 | `result-track:79621b5e275f61557313e6b794e6d5856e5a99f725a58d02f2aa7401eb65c44f` |
| 22 | `theorem` | [singleton_div_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-div-closedball--f3b84175394ca0f3df003393.md) | 142 | `result-track:f3b84175394ca0f3df003393c9962d32eed6ec72100ff4cb7777cae879ef0f18` |
| 23 | `theorem` | [closedBall_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/closedball-mul-singleton--78339ce634cdbae9ceeaf33c.md) | 146 | `result-track:78339ce634cdbae9ceeaf33cb6bba9f5438fc4e96f12a0c11fccd90821b14320` |
| 24 | `theorem` | [closedBall_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/closedball-div-singleton--bcde8b3d89d67fa2d39016de.md) | 150 | `result-track:bcde8b3d89d67fa2d39016de0225908d3404e66ad2abe2688a835a06f153e678` |
| 25 | `theorem` | [singleton_mul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-mul-closedball-one--54e12ac903aa4a581c8f3b7d.md) | 154 | `result-track:54e12ac903aa4a581c8f3b7d7cb6c2c2e90acfacd468cfcd4cbc4f67896f5637` |
| 26 | `theorem` | [singleton_div_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/singleton-div-closedball-one--a036a773463e9c579e71f422.md) | 157 | `result-track:a036a773463e9c579e71f4228d66a4d87dde0c1c28410980eab879bc3fc00d6a` |
| 27 | `theorem` | [closedBall_one_mul_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/closedball-one-mul-singleton--e71fac5342b2253474066085.md) | 161 | `result-track:e71fac5342b2253474066085e895585e05e41ea1a386ade925b19a59128bf4f8` |
| 28 | `theorem` | [closedBall_one_div_singleton](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/closedball-one-div-singleton--87eeb475cf971fe8d585b9a4.md) | 164 | `result-track:87eeb475cf971fe8d585b9a470b5a2d2cd69813421402c080ea0a852ced962f4` |
| 29 | `theorem` | [smul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/smul-closedball-one--ccb3383dfb99fed375de80f0.md) | 167 | `result-track:ccb3383dfb99fed375de80f01e2fd3e6dffdd01af7d3a67123ac84c707af4df5` |
| 30 | `theorem` | [mul_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/mul-ball-one--b3b20febaafccdaf2c0ae7ac.md) | 170 | `result-track:b3b20febaafccdaf2c0ae7ac57d7ce5359e375778a58daf04f931fe4ade318ff` |
| 31 | `theorem` | [div_ball_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/div-ball-one--9790a4ff029f49db23a4b700.md) | 178 | `result-track:9790a4ff029f49db23a4b70062b59414c977a86511f7729c1b15657a090109d0` |
| 32 | `theorem` | [ball_mul_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-mul-one--cd993f2c6252adb5551d51be.md) | 181 | `result-track:cd993f2c6252adb5551d51becb8796acca24957209539b3aa2f25d793801a40d` |
| 33 | `theorem` | [ball_div_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-div-one--722950a535aaa90b5789e13b.md) | 184 | `result-track:722950a535aaa90b5789e13ba0bbfe3d9e2fbd3fdca086e4133093c5694da136` |
| 34 | `theorem` | [mul_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/mul-ball--ece9baa202ff18ec8da17fcf.md) | 187 | `result-track:ece9baa202ff18ec8da17fcf61c89dcc182082f53d5d7ba444b810d962b57578` |
| 35 | `theorem` | [div_ball](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/div-ball--02093558098efe6bb4712d45.md) | 191 | `result-track:02093558098efe6bb4712d4580233bf7887f926bbc611302f0d692726bd41aba` |
| 36 | `theorem` | [ball_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-mul--a75da03888d002d7a0788230.md) | 194 | `result-track:a75da03888d002d7a07882302696fecc9b1a3436f363e0d1261920a3c1df56cb` |
| 37 | `theorem` | [ball_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/ball-div--40145c57c5e6190cc1e75588.md) | 197 | `result-track:40145c57c5e6190cc1e7558827be252639a99ef51f471bd17903752660935d1a` |
| 38 | `theorem` | [IsCompact.mul_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-mul-closedball-one--4ef779499c21b71a831b30f8.md) | 202 | `result-track:4ef779499c21b71a831b30f8bc778555d5914f22fd65438dcee7387b3ab83f45` |
| 39 | `theorem` | [IsCompact.div_closedBall_one](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-div-closedball-one--1cae7c10e58de91b0eac2d3a.md) | 210 | `result-track:1cae7c10e58de91b0eac2d3a43769d8453f3ac1fe0b626ba11c5710b394a7645` |
| 40 | `theorem` | [IsCompact.closedBall_one_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-closedball-one-mul--7408e33e42da59d992b948a3.md) | 214 | `result-track:7408e33e42da59d992b948a38f5bd8c76d9f17edf3aa389e17d36d16b3cd2847` |
| 41 | `theorem` | [IsCompact.closedBall_one_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-closedball-one-div--0087ee1dc842ed88e41b0359.md) | 218 | `result-track:0087ee1dc842ed88e41b0359e03942f60bfb4a0115509e201ca63c9c25d39b3b` |
| 42 | `theorem` | [IsCompact.mul_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-mul-closedball--f545638591310e7d43ad239d.md) | 223 | `result-track:f545638591310e7d43ad239dcc60caba7c7d2206b15ef64cc0d326434212381c` |
| 43 | `theorem` | [IsCompact.div_closedBall](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-div-closedball--e687b9aa0e0faeac8cb29082.md) | 228 | `result-track:e687b9aa0e0faeac8cb290826a7ea8dd0b9837373685ad5c34fecd22bb98e4a2` |
| 44 | `theorem` | [IsCompact.closedBall_mul](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-closedball-mul--33cd1a461170f7d440921791.md) | 233 | `result-track:33cd1a461170f7d4409217913d57f727f6af48f73d1d9338b5f7e2e27d5ce467` |
| 45 | `theorem` | [IsCompact.closedBall_div](../../../../../mathematics/Topology/GeneralTopology/Pointwise/Variant5382d307e24e7c5421404caedb577a8ffa741661dd97924d7f6a659fbb09563e.lean/declarations/iscompact-closedball-div--1f58107b902e8844e2e29bc4.md) | 237 | `result-track:1f58107b902e8844e2e29bc4d0852b5521f5d85aff5df9ffc2c758ffa9d1a9d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.MetricTopology.CoveringNumbers.Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f`.

Source path: `GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [externalCoveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber--903155cc5e7f3146d7983a26.md) | 71 | `declaration-track:903155cc5e7f3146d7983a26558a3ed95a4208949c607f1783a1262744d1dca8` |
| 2 | `def` | [coveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber--0a5b7a9eb7da3a3d2f3cded9.md) | 77 | `declaration-track:0a5b7a9eb7da3a3d2f3cded9caae38d8e308acbec988a744a497289d6af76bf8` |
| 3 | `def` | [packingNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber--02dc47d20f698e568409ef8f.md) | 83 | `declaration-track:02dc47d20f698e568409ef8f6baacbb469d83ebc0120bdd7c7377cbb5db005aa` |
| 4 | `lemma` | [externalCoveringNumber_empty](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-empty--5670f253889e0e5592eedb76.md) | 89 | `result-track:5670f253889e0e5592eedb76e2c9ad50b3bc920e358b067895a5dac516f0553f` |
| 5 | `lemma` | [coveringNumber_empty](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-empty--9394e2f5a6ecfba61ae4cdbe.md) | 93 | `result-track:9394e2f5a6ecfba61ae4cdbed17c5c0daf0edcd964114cc4b0179f19e2824c7e` |
| 6 | `lemma` | [packingNumber_empty](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-empty--4827469feb8b4e43148c2cbd.md) | 96 | `result-track:4827469feb8b4e43148c2cbdde2145114b9aaaf76a1496f05337cf1676b3209d` |
| 7 | `lemma` | [externalCoveringNumber_eq_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-eq-zero--1637f6f7c37e4aa73f278a47.md) | 99 | `result-track:1637f6f7c37e4aa73f278a474aa2fdc4413972c5076c4259e907c2d9e51d32f7` |
| 8 | `lemma` | [externalCoveringNumber_pos_iff](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-pos-iff--274e233f4ba3698f62a7759b.md) | 103 | `result-track:274e233f4ba3698f62a7759b96a5d83e4ef9271ce981ee6fc48211bc3c58aa06` |
| 9 | `lemma` | [coveringNumber_eq_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-eq-zero--f86730283cc1f1672f902d2d.md) | 108 | `result-track:f86730283cc1f1672f902d2d831fddc63c7d2fce133db46acb58ee31e9ff981c` |
| 10 | `lemma` | [coveringNumber_pos_iff](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-pos-iff--149e08d788106c53eccf1293.md) | 111 | `result-track:149e08d788106c53eccf1293a926a9a2bb854f70e08a45ad7ba6eaa5dd09425b` |
| 11 | `lemma` | [packingNumber_eq_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-eq-zero--0a59e1cfb76fbd75d784ef3d.md) | 116 | `result-track:0a59e1cfb76fbd75d784ef3d262893713cbd95f3b2ad1c8c5bfe7f9a2fb747bb` |
| 12 | `lemma` | [packingNumber_pos_iff](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-pos-iff--3b8cefedfaf2b0b33f8e3e96.md) | 124 | `result-track:3b8cefedfaf2b0b33f8e3e96e2dca21736cd2f4f54dffe6ca08e5dfd2bccaee8` |
| 13 | `lemma` | [externalCoveringNumber_le_coveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-le-coveringnumber--3eb5b1e715cb02a6124423ad.md) | 128 | `result-track:3eb5b1e715cb02a6124423ad0d15000c485044ab689dc377ea555051a86a3fd7` |
| 14 | `lemma` | [IsCover.externalCoveringNumber_le_encard](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/iscover-externalcoveringnumber-le-encard--22d5abae39c0fa4966d2727e.md) | 133 | `result-track:22d5abae39c0fa4966d2727e5f6a133d625eae5c83e6ce7a776d1544b10b21d5` |
| 15 | `lemma` | [IsCover.coveringNumber_le_encard](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/iscover-coveringnumber-le-encard--769fc5c6245af3129b187253.md) | 136 | `result-track:769fc5c6245af3129b187253adc6fc5a7bc1cd1f7f9b736cb0bc8b613a34d3db` |
| 16 | `lemma` | [IsSeparated.encard_le_packingNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/isseparated-encard-le-packingnumber--9d786baf0b66320658e244b3.md) | 139 | `result-track:9d786baf0b66320658e244b36c91f6e30a523be6b6c0cc70ed20f4d24a278b07` |
| 17 | `lemma` | [externalCoveringNumber_le_encard_self](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-le-encard-self--2a55679f3494808016425219.md) | 142 | `result-track:2a55679f34948080164252192e61b24596716f2117c6b1eb0c12fa9ba7fed2bb` |
| 18 | `lemma` | [coveringNumber_le_encard_self](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-le-encard-self--7bb2ce3200cc223bda4827af.md) | 145 | `result-track:7bb2ce3200cc223bda4827afaad0489674af645f04d83563e8b2716c6c14a824` |
| 19 | `lemma` | [packingNumber_le_encard_self](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-le-encard-self--644c02c82ca0cb4560bd5a0c.md) | 148 | `result-track:644c02c82ca0cb4560bd5a0cffbe54cce78b6a5b671e69d2dc9e6d3ef6116048` |
| 20 | `lemma` | [externalCoveringNumber_anti](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-anti--d6bdbd10bf709ecc3d78d99d.md) | 152 | `result-track:d6bdbd10bf709ecc3d78d99d105d88c3ef9bbc0b579cca4a6bdbce124d2c21d8` |
| 21 | `lemma` | [coveringNumber_anti](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-anti--5d2c08ecda09d19be3773931.md) | 158 | `result-track:5d2c08ecda09d19be3773931c9d3f0e34e72a6d69ed630f0a448d8fb1afffbce` |
| 22 | `lemma` | [externalCoveringNumber_mono_set](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-mono-set--86c8dd504e547dfb029e6cf2.md) | 163 | `result-track:86c8dd504e547dfb029e6cf252bcc7fa8e25472585c101ae2a29097004e6331b` |
| 23 | `lemma` | [externalCoveringNumber_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-zero--57434055a7adc9169874c49a.md) | 169 | `result-track:57434055a7adc9169874c49abb0f481930e1859ff9191cf9d6fdfdefc7183ae2` |
| 24 | `lemma` | [coveringNumber_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-zero--34e8636a780d4271ebc4adc5.md) | 177 | `result-track:34e8636a780d4271ebc4adc523db7cf6b0836457d0cf8edd813eaf8a0d68f1bf` |
| 25 | `lemma` | [packingNumber_zero](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-zero--a84b37b4b974bff282a3076e.md) | 184 | `result-track:a84b37b4b974bff282a3076eefd3803bfbaec5cf6b56b7ea7a61b8e8150dd20a` |
| 26 | `lemma` | [coveringNumber_eq_one_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-eq-one-of-ediam-le--0d04d8e2503d933099e20c2d.md) | 188 | `result-track:0d04d8e2503d933099e20c2d177e572e50349ffb2613e23bd1b45ac8ebe9f121` |
| 27 | `lemma` | [externalCoveringNumber_eq_one_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-eq-one-of-ediam-le--8c4aff635576e7e1268391b8.md) | 198 | `result-track:8c4aff635576e7e1268391b85d3223f4e27499cb0ea45f28ffc5ee0adc19cc42` |
| 28 | `lemma` | [externalCoveringNumber_le_one_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-le-one-of-ediam-le--30311fd67e8446d2bde7fb14.md) | 206 | `result-track:30311fd67e8446d2bde7fb14c229d3cbb7df8a75130bde32cfe53fdf824dceb0` |
| 29 | `lemma` | [coveringNumber_le_one_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-le-one-of-ediam-le--b5801b09882572bb6a1662f7.md) | 213 | `result-track:b5801b09882572bb6a1662f7f56eb61167f832c0557fc9b887aab1f7c19d8473` |
| 30 | `lemma` | [coveringNumber_singleton](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-singleton--d61ea98198fec633dab6b611.md) | 220 | `result-track:d61ea98198fec633dab6b611c94d1dfdc65c261e0166b4ba88736256ff4a9db3` |
| 31 | `lemma` | [externalCoveringNumber_singleton](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/externalcoveringnumber-singleton--8db87605e732bc156720785b.md) | 224 | `result-track:8db87605e732bc156720785bef75bd8b84693e2d31a3b043725f84117a704de4` |
| 32 | `lemma` | [packingNumber_singleton](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-singleton--3c00734bd87f88bfb3a3d53c.md) | 228 | `result-track:3c00734bd87f88bfb3a3d53c1e35bd31305a92bb433c00fe24ff6c3d5f0f2980` |
| 33 | `lemma` | [exists_set_encard_eq_coveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/exists-set-encard-eq-coveringnumber--a1469f66e62b9ce9671faa52.md) | 234 | `result-track:a1469f66e62b9ce9671faa5229818221a4c4249c5ee52fd73a25b7e04b167d2f` |
| 34 | `def` | [minimalCover](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/minimalcover--20ae4875196e791fdb3fe1f8.md) | 252 | `declaration-track:20ae4875196e791fdb3fe1f8c68cb0f7c46f8ed8f3f06965035f908405919255` |
| 35 | `lemma` | [minimalCover_subset](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/minimalcover-subset--4d125b011b627ee144626871.md) | 255 | `result-track:4d125b011b627ee144626871a48064afacc55186b5d9eca0f80bcfce42b91002` |
| 36 | `lemma` | [finite_minimalCover](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/finite-minimalcover--e312195592f53872af9553e2.md) | 257 | `result-track:e312195592f53872af9553e297b5ee36bd8dc242ab26db766be3d6cac97da06d` |
| 37 | `lemma` | [isCover_minimalCover](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/iscover-minimalcover--cd0f175b19de2faa97d003c0.md) | 260 | `result-track:cd0f175b19de2faa97d003c06b79ee2a7f39ce772acda57d850e6ee4d19f8855` |
| 38 | `lemma` | [encard_minimalCover](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/encard-minimalcover--d8db650f7ca3659976bc1509.md) | 263 | `result-track:d8db650f7ca3659976bc15090434aec28e66c3ba2141104ee0cf511462c4848b` |
| 39 | `lemma` | [exists_set_encard_eq_packingNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/exists-set-encard-eq-packingnumber--ceee7268af761d91f6cd7861.md) | 270 | `result-track:ceee7268af761d91f6cd7861ba738325d6469824ef024a6f1c276d7b3bff6495` |
| 40 | `def` | [maximalSeparatedSet](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/maximalseparatedset--b577882b0df34766bc29f343.md) | 291 | `declaration-track:b577882b0df34766bc29f343efa3642083030d92cf2adedabaa4b2b54437ba60` |
| 41 | `lemma` | [maximalSeparatedSet_subset](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/maximalseparatedset-subset--115a4cff3ba3aa24af6db83a.md) | 294 | `result-track:115a4cff3ba3aa24af6db83a73a95f0f6d70bdef8c0a9ac1bb0f648c7ce0e9d6` |
| 42 | `lemma` | [isSeparated_maximalSeparatedSet](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/isseparated-maximalseparatedset--846ee078641a1be5622a4d33.md) | 296 | `result-track:846ee078641a1be5622a4d3374ec252ea359e411055d444fe13dc0cb28f50552` |
| 43 | `lemma` | [encard_maximalSeparatedSet](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/encard-maximalseparatedset--cbe98a4609f252d8abdad6e1.md) | 299 | `result-track:cbe98a4609f252d8abdad6e1a9a80062cb81bbcd6debc52f50262107afb8765c` |
| 44 | `lemma` | [encard_le_of_isSeparated](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/encard-le-of-isseparated--81c325a7a53e69e408e4426b.md) | 302 | `result-track:81c325a7a53e69e408e4426b7a023d7eeb7fb82f98151580b3a94ad1f2e69d87` |
| 45 | `lemma` | [isCover_maximalSeparatedSet](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/iscover-maximalseparatedset--e50464345e4e05be32f9e730.md) | 309 | `result-track:e50464345e4e05be32f9e73044b1863910b3ee77f56a1f8c2c38b3f273d83d9c` |
| 46 | `theorem` | [packingNumber_two_mul_le_externalCoveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/packingnumber-two-mul-le-externalcoveringnumber--6a98c555e610b647cb4f7e9e.md) | 330 | `result-track:6a98c555e610b647cb4f7e9e6bbbc1586dbe881c7141a7fd168690c0c67b563a` |
| 47 | `theorem` | [coveringNumber_le_packingNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-le-packingnumber--3d05ea02625e951e03704082.md) | 354 | `result-track:3d05ea02625e951e037040822b824de1e8ef0c4980c451d78cf17375a53610ad` |
| 48 | `theorem` | [coveringNumber_two_mul_le_externalCoveringNumber](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-two-mul-le-externalcoveringnumber--93dcf5f37f428ccbc1f5573d.md) | 361 | `result-track:93dcf5f37f428ccbc1f5573d82ead5b51e3e932ec148648f81c490c16dc8ce50` |
| 49 | `lemma` | [coveringNumber_subset_le](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/coveringnumber-subset-le--0c32f2b92531e15a9e5063d0.md) | 368 | `result-track:0c32f2b92531e15a9e5063d0c046245bc7182cb739cec82e21b7e59c1d005db5` |
| 50 | `lemma` | [_root_.Isometry.coveringNumber_image'](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/root-isometry-coveringnumber-image--f483cf1430cc0a18ac40f0cc.md) | 385 | `result-track:f483cf1430cc0a18ac40f0ccdd524638f41f6d12df975a3b77414b407bb6f281` |
| 51 | `lemma` | [_root_.Isometry.coveringNumber_image](../../../../../mathematics/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/declarations/root-isometry-coveringnumber-image--95ae61e7654f266cc82c930e.md) | 417 | `result-track:95ae61e7654f266cc82c930ec1853b40a7fac6a3e34edbce225d5ee0439fba82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

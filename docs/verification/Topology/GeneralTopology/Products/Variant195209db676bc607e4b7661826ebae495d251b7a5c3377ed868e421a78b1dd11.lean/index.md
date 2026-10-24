# Verification target: GRWTSK.Topology.GeneralTopology.Products.Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "530a51b47b650d05d2b95e9b74d03fafdeef4ecd",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `530a51b47b650d05d2b95e9b74d03fafdeef4ecd`.

Source path: `GRWTSK/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [piπ](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/pi--7998a440fff55619ccdec09a.md) | 41 | `declaration-track:7998a440fff55619ccdec09a256510bb7251b2e56726240752b34dd808d37801` |
| 2 | `def` | [piFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/pifan--b349974d9e61d837c01ac9d7.md) | 47 | `declaration-track:b349974d9e61d837c01ac9d76c76a1e7944d4feea0add22146efb278eec85ab8` |
| 3 | `def` | [piFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/pifanislimit--063836af656f0b1a4c77ae81.md) | 52 | `declaration-track:063836af656f0b1a4c77ae810a0bc9533a73eb1b3ccd55bd363a965c43046a9c` |
| 4 | `def` | [piIsoPi](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/piisopi--00aee526495255196d5103d9.md) | 69 | `declaration-track:00aee526495255196d5103d9dc891cd03e7963b5dbcbd33d1378a620e0e70696` |
| 5 | `theorem` | [piIsoPi_inv_π](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/piisopi-inv--a3225a6a9198925939bb5536.md) | 75 | `result-track:a3225a6a9198925939bb55364ee278a8cd1d21f774ffaab954f9a3ab7cee70cf` |
| 6 | `theorem` | [piIsoPi_inv_π_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/piisopi-inv-apply--ce5c6bbfcb074e2f068218fb.md) | 80 | `result-track:ce5c6bbfcb074e2f068218fba3fbc3b40273928b8cc87e304bb81892f56b24ac` |
| 7 | `theorem` | [piIsoPi_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/piisopi-hom-apply--790d117cd2eb7a74b0b5a81b.md) | 87 | `result-track:790d117cd2eb7a74b0b5a81b06f78c549c5eab24ee244f972d8f156f331326e1` |
| 8 | `abbrev` | [sigmaι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigma--4b902ff217f1805b4dd50b2e.md) | 96 | `declaration-track:4b902ff217f1805b4dd50b2e8de590bf3586fc4a3212a5d5ba9bdf92dcf2d8a4` |
| 9 | `def` | [sigmaCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmacofan--93f9981588606d5e962e8548.md) | 105 | `declaration-track:93f9981588606d5e962e854886bf86058045ec8931bdc0d7822b4b203cdd5973` |
| 10 | `def` | [sigmaCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmacofaniscolimit--4585c1cd84418048fce2b530.md) | 110 | `declaration-track:4585c1cd84418048fce2b5308b1e8cc5ac79da1ccf227abcca31c6f93009cd7b` |
| 11 | `def` | [sigmaIsoSigma](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmaisosigma--7d90a2483c8c7c5f639bb81d.md) | 126 | `declaration-track:7d90a2483c8c7c5f639bb81d08c92522a0953b5dde57f2b9bd510bf10526f926` |
| 12 | `theorem` | [sigmaIsoSigma_hom_ι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmaisosigma-hom--54d10aab33a9ddc534de2e13.md) | 131 | `result-track:54d10aab33a9ddc534de2e1324b1549bb6ba3c7ce6926ab88289530499ae4f1a` |
| 13 | `theorem` | [sigmaIsoSigma_hom_ι_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmaisosigma-hom-apply--683be934923decdadb012c08.md) | 136 | `result-track:683be934923decdadb012c084d12d541fdda9b657cf96ce53709804353e8e961` |
| 14 | `theorem` | [sigmaIsoSigma_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/sigmaisosigma-inv-apply--ee46fc223198afd793e2a37a.md) | 142 | `result-track:ee46fc223198afd793e2a37aa5fd874dc790e60b0e50b6c5dade0675a13b25fe` |
| 15 | `theorem` | [induced_of_isLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/induced-of-islimit--88a4a51f182b58e47cc113ee.md) | 149 | `result-track:88a4a51f182b58e47cc113ee13acc6561225a3e7a7e977a61d5814f1333bbd36` |
| 16 | `theorem` | [limit_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/limit-topology--fd4ae4c0d0a0547d26dfe5e9.md) | 158 | `result-track:fd4ae4c0d0a0547d26dfe5e9b27a06b498af42938479f52eea157be9999ca448` |
| 17 | `abbrev` | [prodFst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodfst--fa79a56131281bae015cef9c.md) | 167 | `declaration-track:fa79a56131281bae015cef9c5d968ed857fd56816e4244dd930910cf8ddd1048` |
| 18 | `abbrev` | [prodSnd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodsnd--0d3bc68e7ec4eddcf4004b2e.md) | 172 | `declaration-track:0d3bc68e7ec4eddcf4004b2ef5e0cfebc93c6e43f45acf8c8900bb2c8282e25a` |
| 19 | `def` | [prodBinaryFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodbinaryfan--a5e87ea4e090ee3e3ba485dd.md) | 177 | `declaration-track:a5e87ea4e090ee3e3ba485dd7087332c1b789de84cd52cedcc12d1bfde9a0b8f` |
| 20 | `def` | [prodBinaryFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodbinaryfanislimit--7810ae7060692710314cb9cb.md) | 182 | `declaration-track:7810ae7060692710314cb9cb196047cf773907ef41a552b388bff911e16f494e` |
| 21 | `def` | [prodIsoProd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod--97f9678abe77aacc1a1eba6c.md) | 206 | `declaration-track:97f9678abe77aacc1a1eba6c8f73d0b1e63220d26b9c615ab5d0dca042953e2a` |
| 22 | `theorem` | [prodIsoProd_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod-hom-fst--c7f830e60ac49eeb1d5f118e.md) | 211 | `result-track:c7f830e60ac49eeb1d5f118e9d5753e2d2e9f02d1906d409f87991389d6decf0` |
| 23 | `theorem` | [prodIsoProd_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod-hom-snd--7c868171cfc8ebdef8e900bd.md) | 218 | `result-track:7c868171cfc8ebdef8e900bd3465ecf94c66a43b18a12a4c386b3fecc0aa2822` |
| 24 | `theorem` | [prodIsoProd_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod-hom-apply--129d66dd8d74398cc08a5185.md) | 226 | `result-track:129d66dd8d74398cc08a518515f9555ffd76389edb388e6e354bb0fd65591d0c` |
| 25 | `theorem` | [prodIsoProd_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod-inv-fst--26ed4ab9f7e04d13d97afe8c.md) | 236 | `result-track:26ed4ab9f7e04d13d97afe8ca8549fb6b9de55e0de03c2d58baf57f3a6bce966` |
| 26 | `theorem` | [prodIsoProd_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prodisoprod-inv-snd--a9390fae5bfe7ef4b6fe93bf.md) | 241 | `result-track:a9390fae5bfe7ef4b6fe93bf5bbb985afa02853399ab3d806357d336c45cc025` |
| 27 | `theorem` | [prod_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/prod-topology--a1260f22a05835d85d7dd558.md) | 245 | `result-track:a1260f22a05835d85d7dd558035dca7cd8a5935c36c664cc702c63732de55c61` |
| 28 | `theorem` | [range_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/range-prod-map--b8a1e628dc2765b3cab36074.md) | 256 | `result-track:b8a1e628dc2765b3cab3607465e086e6da3afea1f92bd58886d8ed0678323fe1` |
| 29 | `theorem` | [inducing_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/inducing-prod-map--fabf295dcfe2ffb78016dd6e.md) | 280 | `result-track:fabf295dcfe2ffb78016dd6e0cdb9dc99a84cb9d129302ea216746f74198514a` |
| 30 | `theorem` | [embedding_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/embedding-prod-map--0b6832236b87213ef6331a31.md) | 289 | `result-track:0b6832236b87213ef6331a314f8f395d38044763a702d2a0fc45cae577455aa9` |
| 31 | `def` | [binaryCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/binarycofan--a44eb92ff7d6042339138ec7.md) | 300 | `declaration-track:a44eb92ff7d6042339138ec7038b9f86647ed681e6ec2da6bea6501a58c739cd` |
| 32 | `def` | [binaryCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/binarycofaniscolimit--84315b6cfd49fcec1d8209ac.md) | 305 | `declaration-track:84315b6cfd49fcec1d8209acb866839398aab5226b152937e85e9c89d798dc78` |
| 33 | `theorem` | [binaryCofan_isColimit_iff](../../../../../mathematics/Topology/GeneralTopology/Products/Variant195209db676bc607e4b7661826ebae495d251b7a5c3377ed868e421a78b1dd11.lean/declarations/binarycofan-iscolimit-iff--114f7d3a2fe7a17e85069532.md) | 321 | `result-track:114f7d3a2fe7a17e850695320a774018864b7523a72c2fe5bf62978a86b7a157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

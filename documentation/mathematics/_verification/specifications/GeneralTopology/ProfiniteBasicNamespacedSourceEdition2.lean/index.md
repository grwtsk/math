# Verification target: Profinite Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc553c50d85e9d655943dcbb61b96ef3f8f1e1bd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc553c50d85e9d655943dcbb61b96ef3f8f1e1bd`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Profinite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Profinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/profinite.md) | 53 | `declaration-track:3cee2647a6bd0147660470b79b9ed07ac58da0fa2ee5023c01799e02ea9ac836` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:4ba7f22ac4ca4bf42aa6b20e1e03515b61956b0fa2fcff132b7229419355d57e` |
| 3 | `abbrev` | [of](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/of.md) | 64 | `declaration-track:2a1c020bb000014519d0daf1d81e78871f52bb5b52e7483e21562f0a41fd2b0d` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 68 | `declaration-track:cda053ab029d0a139c5723dc2005b0523dab1a9ac296f02c8ecfb5493eabde9a` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:4178d4bcd909376e7bfec179fa446f78cea69acd7309e013230120831cda4422` |
| 6 | `abbrev` | [profiniteToCompHaus](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/profinitetocomphaus.md) | 77 | `declaration-track:9e59d5a69545107baa2a26bfb539ba97722084dc1fc9ad4d2456e9a4c109289b` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 82 | `declaration-track:ded7db33a6b0ecb7e5583c118b602a42f192792a6c749e76f6f602b4a2ba9206` |
| 8 | `abbrev` | [Profinite.toTopCat](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/profinite-totopcat.md) | 87 | `declaration-track:2f29e65e88c7a1113e3ec041dff9382b1eda5e15975132ea1b6e6c394401f9a0` |
| 9 | `def` | [CompHaus.toProfiniteObj](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/comphaus-toprofiniteobj.md) | 100 | `declaration-track:c7ef851836b2f6864a4ec756076cceb5b6028dc5e9143208f24aa9d74282ff3a` |
| 10 | `def` | [Profinite.toCompHausEquivalence](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/profinite-tocomphausequivalence.md) | 109 | `declaration-track:66157047d7d8ee723a5514ee09f4b82fa8837174362ba2b6fdf32ccc61ad12c0` |
| 11 | `def` | [CompHaus.toProfinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/comphaus-toprofinite.md) | 121 | `declaration-track:a276e350d08a3ffaf896937f0c09f4808f9ed791d32c4998548b78a8d087a033` |
| 12 | `theorem` | [CompHaus.toProfinite_obj'](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/comphaus-toprofinite-obj.md) | 124 | `result-track:7c0ff2e6e265189aa39b4030b4d6a83592d6440ae65917ba4e366e57b574cb9e` |
| 13 | `def` | [FintypeCat.botTopology](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/fintypecat-bottopology.md) | 129 | `declaration-track:6c6cb34fea82b037433cfc8e1ab0338f3f08fea58358e6e194ea517b6f1b170d` |
| 14 | `theorem` | [FintypeCat.discreteTopology](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/fintypecat-discretetopology.md) | 135 | `result-track:825d22de5ff0984d7674217207bbde634feb27f41ed9605cbc320b0566bc8c39` |
| 15 | `def` | [FintypeCat.toProfinite](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/fintypecat-toprofinite.md) | 143 | `declaration-track:f76f40c333799e454ef9a18305b9ffd01d94021d971a458496f0566c5e2a8339` |
| 16 | `def` | [FintypeCat.toProfiniteFullyFaithful](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/fintypecat-toprofinitefullyfaithful.md) | 148 | `declaration-track:3ef4f5e3143a5848d670af1d76438c4fdcd80dcfe7629d4288fbd8f361526008` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 153 | `declaration-track:ac429442330964bcc75e79971322244025ef41f15889bf4f43fb1c71719a1818` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 155 | `declaration-track:1eb77789baf9817101c54772544769a87e1b7ce35982ba4ecd0464511d17b40e` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 157 | `declaration-track:b951b0e0977e5916f686a01c5aed6d54ace3466c6321629befb16acf7a471c29` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 159 | `declaration-track:9ea6051e4aeab7e5dfcfbf1d4b5b4b246f8a5cdeb4630e35e442d8782b004b2d` |
| 21 | `def` | [limitCone](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/limitcone.md) | 169 | `declaration-track:6f8675455c2faf5bb69ee63b3fc078fc9f9d8c1e1e2284ae0d4628ea5297de0d` |
| 22 | `def` | [limitConeIsLimit](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/limitconeislimit.md) | 184 | `declaration-track:6fd3fc375aaceed996defceb006564c4591ed766a630f5b0196711ef7f8c81cb` |
| 23 | `def` | [toProfiniteAdjToCompHaus](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/toprofiniteadjtocomphaus.md) | 192 | `declaration-track:149aa8ef4df299b551298624641553fb47bb11c32bc7fa7acf7fdea31ff9371a` |
| 24 | `instance` | [toCompHaus.reflective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/tocomphaus-reflective.md) | 196 | `declaration-track:f222434ece09772f33d9f1540cf4e01ff256ab932d5bcc97789660ba4dbd5cf1` |
| 25 | `instance` | [toCompHaus.createsLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/tocomphaus-createslimits.md) | 200 | `declaration-track:06d696b74b716c99ab4a16dd7821495aaa5d4bf37315a1ec6a7c0b61e6f4b278` |
| 26 | `instance` | [toTopCat.reflective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/totopcat-reflective.md) | 203 | `declaration-track:06b40097c4423b47f222b7398466cf6c374d2076fc3f913c2e64ccdfbb59b359` |
| 27 | `instance` | [toTopCat.createsLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/totopcat-createslimits.md) | 206 | `declaration-track:1b5b6751b223fb6d590ba25518333f0093ee6e95984612a50c8aa6801e58b2a2` |
| 28 | `instance` | [hasLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/haslimits.md) | 209 | `declaration-track:9a95dc7b8755fd70df5aaf433f6b4e20bd447542b4906918f5a41d2c9632b4d0` |
| 29 | `instance` | [hasColimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/hascolimits.md) | 212 | `declaration-track:6207fac8448b77632620723ced52543445979ae8afe9e8071298ae9f1eabc682` |
| 30 | `instance` | [forget_preservesLimits](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/forget-preserveslimits.md) | 215 | `declaration-track:56c5d31d9c5442b2cc8917d6eda62bd18c3d7b773850acf1f49660fbe98623b8` |
| 31 | `theorem` | [epi_iff_surjective](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/epi-iff-surjective.md) | 218 | `result-track:99e0d7f006e4c7b3e10aea5c9c5c108db1edae206884c57d80ecead3ac126081` |
| 32 | `def` | [pi](../../../../GeneralTopology/ProfiniteBasicNamespacedSourceEdition2.lean/declarations/pi.md) | 253 | `declaration-track:993103ef69cadac29359914d8f3abbc9e9e7346430e59fb9641447227d227581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93243548a89fa6090179e156d653774fbe2f6ac9c0a9ea8527d4f0dd37103772 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant40f6093c3ae445024e49ea66867db738c5f8bbb6ab2624a684b60a5c3740980f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

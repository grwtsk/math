# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd34675411dcf210eb7c07ccf7df8a1bf461dc89",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd34675411dcf210eb7c07ccf7df8a1bf461dc89`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Light.TopComparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Sequential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Sequence` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/coinducingcoprod--170a384a53c2d7e14392f79e.md) | 38 | `declaration-track:170a384a53c2d7e14392f79eac772c07015a06aa421a8974a2134d21c0e19b45` |
| 2 | `instance` | [underlyingTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/underlyingtopologicalspace--74924dc9b8b2aae2b2c9b36d.md) | 46 | `declaration-track:74924dc9b8b2aae2b2c9b36d7037026e9439748d91a2379ca76b34a1b8ab1294` |
| 3 | `abbrev` | [toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/totopcat--1184695db30c98eea1dd46f6.md) | 51 | `declaration-track:1184695db30c98eea1dd46f6e9abafd18a5feb6822c8dcac5ae25c5e18a3ef9c` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/continuous-coinducingcoprod--1c01e8a8fe99defae4f7353b.md) | 53 | `result-track:1c01e8a8fe99defae4f7353baf190d2a8bf6721427fd77a228b4d2467408ddb1` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/totopcatmap--f4a5324f6b6ccc1ee7744053.md) | 65 | `declaration-track:f4a5324f6b6ccc1ee77440535abb750e898195fed202da4114008ac068e284e3` |
| 6 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.CoinducingCoprod.Variant960a7cbd3c3f3f475dfc734e81835c42ab7aa1521b0641ae2576e44b33cf1120.lightCondSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/root-grwtsk-topology-generaltopology-coinducingcoprod-variant960a7cbd3c3--8a71d2656951fb5d805d59ab.md) | 79 | `declaration-track:8a71d2656951fb5d805d59abda6f479619b86fbfd01b49a54210db05088302a7` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/topcatadjunctioncounit--fa7888db528197704c6348ee.md) | 84 | `declaration-track:fa7888db528197704c6348ee4aecea5aa8fa6da3da5a498d783b03281818750d` |
| 8 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/topcatadjunctioncounitequiv--b17e11854ab38d15653141a3.md) | 94 | `declaration-track:b17e11854ab38d15653141a343dc48f19b9aa56c7a3403c93a658862cb59c9ab` |
| 9 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/topcatadjunctioncounit-bijective--d175a2956eeb6d4ec1db7b8f.md) | 100 | `result-track:d175a2956eeb6d4ec1db7b8fa4aa9b02a8e366cba6d44fe1f1a16aa978272204` |
| 10 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/topcatadjunctionunit--634e8accfed721d776b39f75.md) | 106 | `declaration-track:634e8accfed721d776b39f7567dd0150393898b65658de6b130a3aca03a79801` |
| 11 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/topcatadjunction--fcad40fe97ef9b4e2f7c021f.md) | 122 | `declaration-track:fcad40fe97ef9b4e2f7c021f1093398243702f5e9385d630ee4cccc7d0e955a8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/instance--63bc52822710890e0a720c7e.md) | 130 | `declaration-track:63bc52822710890e0a720c7e464327b3073347e9526b06aaf837446f57f391f9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/instance--9bcee19d20fd117e55523899.md) | 134 | `declaration-track:9bcee19d20fd117e55523899afb2e1258a504e4893799bafbd771c1d2b51f5b0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/instance--b473a73760e36abcb4e6f057.md) | 138 | `declaration-track:b473a73760e36abcb4e6f0577a3bdc119856eb29b47d1041e440842ae1b8e8a0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/instance--49fb13b1a1ce6e4b2bedcd13.md) | 141 | `declaration-track:49fb13b1a1ce6e4b2bedcd1386568cc44d9c7f4957e9f88a3f3ab18ccd0ed324` |
| 16 | `def` | [lightCondSetToSequential](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/lightcondsettosequential--0f3088f39001d7a7417d862a.md) | 145 | `declaration-track:0f3088f39001d7a7417d862a8e3da890df880b56a1e980f6a9bdf54ce7a51f0a` |
| 17 | `def` | [sequentialToLightCondSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/sequentialtolightcondset--35d258a3bba79b15dbea7c94.md) | 152 | `declaration-track:35d258a3bba79b15dbea7c94f931eb51daf95bc7cbcaf768a6ac28418cd11b81` |
| 18 | `def` | [sequentialAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/sequentialadjunction--031aff4d03b7b4e7cb1ed5f8.md) | 160 | `declaration-track:031aff4d03b7b4e7cb1ed5f8ef67cd10fc9f93a998cb880c14c677ea982cfbd7` |
| 19 | `def` | [sequentialAdjunctionHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/sequentialadjunctionhomeo--63185209644d919f9e11b6c3.md) | 173 | `declaration-track:63185209644d919f9e11b6c387be6507359ba19291b12cf1caaa4b5279cf8464` |
| 20 | `def` | [sequentialAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/sequentialadjunctioncounitiso--2d35726e9926bb03f349e736.md) | 194 | `declaration-track:2d35726e9926bb03f349e736209bec365ebf838659f7f54ee004ad5c1c44f2ed` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/instance--324f1d92fd7928ce1eee0e79.md) | 198 | `declaration-track:324f1d92fd7928ce1eee0e79260d67c06d4b67993ff65d6e6cbc21cc41fa9005` |
| 22 | `def` | [fullyFaithfulSequentialToLightCondSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant56e9fb050d60ccf82ac24457b2da4104a1c61cd215440a0318a553a4efb1dcaa.lean/declarations/fullyfaithfulsequentialtolightcondset--b91237f4915e0880f76eaf69.md) | 210 | `declaration-track:b91237f4915e0880f76eaf69cf0d6c22fae33c49e3a4da10ce80cae55af20878` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

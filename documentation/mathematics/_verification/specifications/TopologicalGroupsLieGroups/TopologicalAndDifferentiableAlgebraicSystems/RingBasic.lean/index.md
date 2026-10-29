# Verification target: Ring Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7420e9e86fedd96ccc3fd0fccd6c8f87d10c2055",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7420e9e86fedd96ccc3fd0fccd6c8f87d10c2055`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.GroupTopology` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalsemiring.md) | 45 | `declaration-track:41805dc98ce8d537aadb5a173f69df5a1565f6d11b55c9bbb47123ea58acdedb` |
| 2 | `class` | [IsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalring.md) | 57 | `declaration-track:72bf03a8de793987cf1936455a7e19400c4e64f8b9f635771beae2ebefe29278` |
| 3 | `theorem` | [IsTopologicalSemiring.continuousNeg_of_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalsemiring-continuousneg-of-mul.md) | 67 | `result-track:c418a53db9924990ff510ce87055790bfb85a386e19ac48bc8bf9ee35336c2da` |
| 4 | `theorem` | [IsTopologicalSemiring.toIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalsemiring-toistopologicalring.md) | 75 | `result-track:5c4316b6e00c2ef21b7d0e53b031b825d45278576bac84e940d265eb82e85c8c` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-5.md) | 83 | `declaration-track:22b29a55a76477bd722d3f9b8fac2f6bf0b0301ae9968b90428868c0f52f9adc` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-13.md) | 86 | `declaration-track:92b10189be01610585918166618beefdf88e6878ded8bfff1127cdaf160bbafd` |
| 7 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-10.md) | 89 | `declaration-track:6a374643f6c43bb5dee066e65b4c3d4f298ad69af73b3156f7aacc8cb0663f48` |
| 8 | `instance` | [instIsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instistopologicalsemiring.md) | 98 | `declaration-track:158717f40e5942c784b583d2cc6ade14a5c84de0e5e4431dc9f8091469c17b82` |
| 9 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalclosure-source-edition-2.md) | 103 | `declaration-track:7cc7a9fc93e9d0f190167440a5e2f6b3ef75abbe4f7d16ce7cfcdcd3e828b58a` |
| 10 | `theorem` | [topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalclosure-coe.md) | 108 | `result-track:ecba0af2dc4d0aa2f67e949b29e6cf627da6386e004aaed2285407bc28bd82ac` |
| 11 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/le-topologicalclosure-source-edition-2.md) | 112 | `result-track:8730e7e937ba7e2988bb5cfc8863f3e10290858939cf6dd94919931005afae50` |
| 12 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/isclosed-topologicalclosure.md) | 115 | `result-track:0db13615606549d902a4a06931b3589b2140ad20c0b010bea0f64fbcf53687af` |
| 13 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalclosure-minimal.md) | 118 | `result-track:480299cead9bd1f93de55825cd2205e2d92d08d8afee5a2a0eb35e3d5f856fc3` |
| 14 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/nonunitalcommsemiringtopologicalclosure.md) | 126 | `declaration-track:d160be00226879c87baaca4cdb6d0b6e277a4ac4edac7d2139118c275bb7dadb` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-18.md) | 135 | `declaration-track:efe216fb35f367e8b66c2601f10e0fdd942fe3252e5aa737291d582a661a2987` |
| 16 | `instance` | [topologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalsemiring.md) | 139 | `declaration-track:a266e2bc8ce086940eaec72399b37bc7857f78dc81c47d80c786161c7a54ffa1` |
| 17 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/continuoussmul.md) | 142 | `declaration-track:86617763a9cb12bf7c467d6b0edd2b477d0b4da4bb8e19c0f22ae017042d828e` |
| 18 | `def` | [Subsemiring.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-topologicalclosure.md) | 150 | `declaration-track:f81961e6d2cfb251de98049118df47242fe0536a85f2fee830a82be73ff1443e` |
| 19 | `theorem` | [Subsemiring.topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-topologicalclosure-coe.md) | 155 | `result-track:3d37b3b63bbd312544c8b0a4160b6a3d2a57b4dc34727a6cd35462ff9c81a38e` |
| 20 | `theorem` | [Subsemiring.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-le-topologicalclosure.md) | 159 | `result-track:14b8e1732d63adb096c69217f9f4b8d8cf995d4357e3b6be53ca44bee487b36c` |
| 21 | `theorem` | [Subsemiring.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-isclosed-topologicalclosure.md) | 162 | `result-track:a94bae6b606d51811de13d8dca05b535bd96d0ff19511a69cc7c648b7e2c9b32` |
| 22 | `theorem` | [Subsemiring.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-topologicalclosure-minimal.md) | 165 | `result-track:449b6a102e1407834c20509dd0c7898afe94c58abb5e0095e130c78ddc2579a3` |
| 23 | `abbrev` | [Subsemiring.commSemiringTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subsemiring-commsemiringtopologicalclosure.md) | 173 | `declaration-track:3c78cf50d5731b27a329a8095414329d3f89b9ad32474cd198915ff1a25252dc` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-16.md) | 185 | `declaration-track:ce958ad21aca471f144bcdd3d73bb55bc77ad2f4c94f3756683d2f8fdc6ee10c` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-8.md) | 190 | `declaration-track:55a33d9adb9082bcd013d37d4851c3aae3b904a5a4b184de67e1af1d984652b7` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-12.md) | 197 | `declaration-track:714da946c50fcee676b4d6d0b8d5f49604f3045e55b652622c958c4b1db1cea6` |
| 27 | `instance` | [Pi.instIsTopologicalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/pi-instistopologicalsemiring.md) | 202 | `declaration-track:d6d01c3daa533788a037b657182ed1e76f86bfe6c1b9fc9407cf596bc2073961` |
| 28 | `instance` | [Pi.instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/pi-instistopologicalring.md) | 206 | `declaration-track:a8cc98dda8f948aa188912160643c10bd2669c4f5f3023370a0b4575fa89fa93` |
| 29 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-3.md) | 214 | `declaration-track:0c3ff50811e8b334be3c640473f567dd91497ccff0bf1caa27d446550e5b9fa0` |
| 30 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-17.md) | 218 | `declaration-track:ec5816ade6f2eefae656efca24c5d34d70e0f80150b64febc6bedc632db5eaf4` |
| 31 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-14.md) | 221 | `declaration-track:a6474c80e522fdb0df852dbe68de3b3f1e8881e5c5c6f2635c88be3c6e264b9c` |
| 32 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-11.md) | 224 | `declaration-track:6e5cfa708de7f56ca2c599f8b3fec63e5210fbce1a20f50f7b354079a90fa069` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance.md) | 233 | `declaration-track:06d9d13778584158480f00c8eee677d54b33ae2989078a7ace30aa0e0f7fc353` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-15.md) | 237 | `declaration-track:b8c78292ccfcfb76dcb648f7da313c4f3be766436b5a427ad9f5d0b6c86a3115` |
| 35 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-9.md) | 240 | `declaration-track:6645e49b33902698fb507dad91a811060d8b4695fd16e2c9184102b0f8c526d0` |
| 36 | `theorem` | [IsTopologicalRing.of_addGroup_of_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalring-of-addgroup-of-nhds-zero.md) | 249 | `result-track:26464be3e0ad3983ad3350f31e6528260dbcacf897f322af700f27cb95ac4a15` |
| 37 | `theorem` | [IsTopologicalRing.of_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/istopologicalring-of-nhds-zero.md) | 257 | `result-track:cb73e3bb8e2dd0caf360f4e3dc6d0c7557ec9e866f57c9ac31e51396fa4503d1` |
| 38 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-4.md) | 275 | `declaration-track:2158fc30a8ec6862ce6511854537ca1c5e439d96403a355523bf49107edaca13` |
| 39 | `theorem` | [mulLeft_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/mulleft-continuous.md) | 278 | `result-track:2f95e4c7ddf7cdb6d53c2ccc58d42fcd8f3c2b7b1ebb5a2b6e10d966b7b99225` |
| 40 | `theorem` | [mulRight_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/mulright-continuous.md) | 282 | `result-track:4ff2c26ba4baa4a314ca667e031954041d00ec7242ae0e8a677acbb7ae63c62d` |
| 41 | `instance` | [instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instistopologicalring.md) | 291 | `declaration-track:cc01d4e1f31e24888a9c46498bb445fcff396a0e330de18eecf274e191cbf7d5` |
| 42 | `def` | [topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalclosure.md) | 296 | `declaration-track:59ade15e6c3acbef46b9aa087851eb3317943d9963c12ce51de92436b02be198` |
| 43 | `theorem` | [le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/le-topologicalclosure.md) | 300 | `result-track:232e368794addb823fa022b8075b023b089f1eb5e63e15afc8f45def2bbc6ad0` |
| 44 | `theorem` | [isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/isclosed-topologicalclosure-source-edition-2.md) | 303 | `result-track:71f41712e3d59e467170972d85899401dd5d6fecc3f4df2bd17d7c1c66f07dbf` |
| 45 | `theorem` | [topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/topologicalclosure-minimal-source-edition-2.md) | 306 | `result-track:d619b0cbe84e7525033df05cfbf24d3cfc902a184403bb8879c3b87e36dd3f72` |
| 46 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/nonunitalcommringtopologicalclosure.md) | 314 | `declaration-track:6553aac129772a3b074fcdcb3983ec62a948949649cb6be095bce718ce976d3b` |
| 47 | `instance` | [Subring.instIsTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-instistopologicalring.md) | 322 | `declaration-track:247dbef3d45cf78bc7490d2713c9fdb1abcc866c5d55e497450d096ada941f90` |
| 48 | `instance` | [Subring.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-continuoussmul.md) | 325 | `declaration-track:305999e8541077bc5f55f3cfeef0a58fe895aabda8ab49884b17885d753f30c8` |
| 49 | `def` | [Subring.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-topologicalclosure.md) | 331 | `declaration-track:3636eb7d34949833247348a902a8c96f2bfe7b44398b04090300ed5545330c45` |
| 50 | `theorem` | [Subring.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-le-topologicalclosure.md) | 335 | `result-track:a2ba44254681cc0cae5866cd461413ec1181d93e5f7c1d8238afc5334d73144f` |
| 51 | `theorem` | [Subring.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-isclosed-topologicalclosure.md) | 338 | `result-track:37c9c8087e22a27bdc362c75459287d98cf98f9efc89ef06d4f62e9bdf93ca4f` |
| 52 | `theorem` | [Subring.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-topologicalclosure-minimal.md) | 341 | `result-track:48a058e8bfa8583ebe9a0f6f90687afce045b73c9c73d37a41b0b42a68e8025e` |
| 53 | `abbrev` | [Subring.commRingTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/subring-commringtopologicalclosure.md) | 348 | `declaration-track:d91c29b68f0e6caa891271731041997733e55a05819f9f5884f1eca8fbdbabf0` |
| 54 | `structure` | [RingTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/ringtopology.md) | 369 | `declaration-track:c9d0315a2bd465cf0f29048cdf1621b82efb3fd9356739dc02d1e30d2a846890` |
| 55 | `instance` | [inhabited](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/inhabited.md) | 376 | `declaration-track:b5667a2b1be35a4851e9ac4841a74fe26fc3a4de7811edf15e3c5e6f4c4882ce` |
| 56 | `theorem` | [toTopologicalSpace_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/totopologicalspace-injective.md) | 382 | `result-track:b0a9ea64a25a761376e3db5736e237b31deec9bd0f8167d850236c6ff9a5e2d4` |
| 57 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/ext.md) | 387 | `result-track:dde79644912fe0aeda49d97da76d47896227c64295c80ab0ade9733bbc896a2c` |
| 58 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-2.md) | 392 | `declaration-track:08c5b553d5eb31e4c022c45bdbb8a3232293b125399bbf86ee9744dc5e07d51f` |
| 59 | `def` | [def_sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/def-sinf.md) | 395 | `declaration-track:18eb548a1586f9173e17d23b0f70a9574a98aba10bcb992e7d08aab8a8669721` |
| 60 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-7.md) | 412 | `declaration-track:4ed99c69c5e5d9be7a49622608414d14670ab719c6a86748afc6e7ad50c7c271` |
| 61 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/instance-source-edition-6.md) | 417 | `declaration-track:4ab513aa382ac0073905cc8cfd2600515a1357ea488fe9b71aab5f048bb63c33` |
| 62 | `def` | [coinduced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/coinduced.md) | 422 | `declaration-track:90967448eec87921a757991b00ebed436d685e1d65c13dedeb41c26511f98efa` |
| 63 | `theorem` | [coinduced_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/coinduced-continuous.md) | 425 | `result-track:977b49756149d6c56d0e443fc648778ff7afdd951d095387fd4409609dd3ede9` |
| 64 | `def` | [toAddGroupTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/toaddgrouptopology.md) | 430 | `declaration-track:16a4effef9843a8fcc66369e33dd69f09bedb348a0f61c24db42e75f953b2f20` |
| 65 | `def` | [toAddGroupTopology.orderEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/toaddgrouptopology-orderembedding.md) | 436 | `declaration-track:fd3c463081ee29937f5193135fceae8e287419188cd11cb3ac113aed9a03656f` |
| 66 | `def` | [AbsoluteValue.comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RingBasic.lean/declarations/absolutevalue-comp.md) | 445 | `declaration-track:5e51af50718d31f3ecdd930bca9dd48b8c2800c6b7ce75071132990ec4b3abd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43558d18168e88a544d2b60de608e9d47086ba930e07406bfe90bfa62554d78d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

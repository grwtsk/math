# Verification target: Ring Theory Artinian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e724beaa9986d7122091e6906db8b3c3be9a6233`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Nakayama` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RSuffices` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsArtinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian.md) | 48 | `declaration-track:fda0293058c57aa3a75a061628772b8dc7f990380d98080969c68c2fd098b583` |
| 2 | `theorem` | [IsArtinian.wellFounded_submodule_lt](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-wellfounded-submodule-lt.md) | 64 | `result-track:0ad9f9748aafeb9fd65130bc09eabb60123bf0f87bdfab0f5f7dba97183c4704` |
| 3 | `theorem` | [isArtinian_of_injective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-injective.md) | 69 | `result-track:b68808590aaa547f473533025993917feb104369fe0e751b4cc598e259b08ce4` |
| 4 | `instance` | [isArtinian_submodule'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-submodule.md) | 76 | `declaration-track:ce1e5154a5e1e99ca17bd24304ee3d48d1551bd53f9f41b6cdbba945796e089c` |
| 5 | `theorem` | [isArtinian_of_le](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-le.md) | 80 | `result-track:7360aa92ebaf42900503b3f0c8f07e67fbac2a75d1cf63e176f4e1cdf012f6d3` |
| 6 | `theorem` | [isArtinian_of_surjective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-surjective.md) | 86 | `result-track:f33c4dbf4e6431ef4f73ee7b7d3a991d3e2a18c23b0fec5a54361745cd87f76f` |
| 7 | `theorem` | [isArtinian_of_linearEquiv](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-linearequiv.md) | 96 | `result-track:7dd754741c4d6613dc472ed1c2bee31f8310342080ed38d504ac567a19ea6141` |
| 8 | `theorem` | [isArtinian_of_range_eq_ker](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-range-eq-ker.md) | 100 | `result-track:641ba73da574d1e2091e3a837d8b91e6e0a0a4a045b34a96a875b0cd4d565587` |
| 9 | `instance` | [isArtinian_prod](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-prod.md) | 110 | `declaration-track:5890606ff29714df2d39fab39f20fd48486e6ade571d16d731ceff4fb0dbb98a` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:bbcdf2f2831f2acb124fcc8979b5c6cd646e2d829870c8afdb4e07699fe88311` |
| 11 | `instance` | [isArtinian_pi](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-pi.md) | 122 | `declaration-track:60e60268c3a0130069281a8c98e56f8f70b71089811965f8cfb72d6c93798d6b` |
| 12 | `instance` | [isArtinian_pi'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-pi-source-edition-2.md) | 139 | `declaration-track:78e72f4918cadd43c228872c5878788f0056c6380a2b07fd8686371a8355b9ab` |
| 13 | `instance` | [isArtinian_finsupp](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-finsupp.md) | 145 | `declaration-track:fb0ea7a9efec73169945a951c0580a1d711aa68cae831f7ac05002a39144b783` |
| 14 | `theorem` | [isArtinian_iff_wellFounded](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-iff-wellfounded.md) | 157 | `result-track:1ecc49e139ef604d9537e426421462e5bfea9bd259e2e8a64498e1742b6e502d` |
| 15 | `theorem` | [IsArtinian.finite_of_linearIndependent](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-finite-of-linearindependent.md) | 162 | `result-track:5ac4957550e8429b6d8bc8167a01998e42e8b9c93a8a7c0984c1aa7d9d6ee8d4` |
| 16 | `theorem` | [set_has_minimal_iff_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/set-has-minimal-iff-artinian.md) | 185 | `result-track:37079898c7038a922e6be89d5f4b682755704c989c2d55a1e33e8826525a3d40` |
| 17 | `theorem` | [IsArtinian.set_has_minimal](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-set-has-minimal.md) | 190 | `result-track:5996fa194e2a363b9daa95cf2de55cc7da95581e4be1c62d2db179eba869b4f6` |
| 18 | `theorem` | [monotone_stabilizes_iff_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/monotone-stabilizes-iff-artinian.md) | 196 | `result-track:94cd40da1f33c58b0dc304a6a9c0b627a5b4cee194adc80aa46a94525c6d615d` |
| 19 | `theorem` | [monotone_stabilizes](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/monotone-stabilizes.md) | 206 | `result-track:82086077b19eaad34de049d736a7921bd20e392f482fb5373e7250836f8805ec` |
| 20 | `theorem` | [induction](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/induction.md) | 211 | `result-track:ef0f152d7522610e76c745a9a0392770d608955acdaa21780df4f917566239a7` |
| 21 | `theorem` | [exists_endomorphism_iterate_ker_sup_range_eq_top](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/exists-endomorphism-iterate-ker-sup-range-eq-top.md) | 218 | `result-track:a0a8c937ca369b7b81d206aebb04723a9e0011f9d1e9c5c3653ae7fc4b372362` |
| 22 | `theorem` | [surjective_of_injective_endomorphism](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/surjective-of-injective-endomorphism.md) | 240 | `result-track:d5f1fd37e58afb73d55a4facece5be77b67e72771a3f64cae06d5688e8a5608c` |
| 23 | `theorem` | [bijective_of_injective_endomorphism](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/bijective-of-injective-endomorphism.md) | 248 | `result-track:6765f7958a30069a21423e90e7ce7d553f6619369ee8bdad143275949d070703` |
| 24 | `theorem` | [disjoint_partial_infs_eventually_top](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/disjoint-partial-infs-eventually-top.md) | 255 | `result-track:b6a4f89573c0bef64cd260d3ef78ea0b356ff8df0071e432d59f83eeba8f606e` |
| 25 | `theorem` | [range_smul_pow_stabilizes](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/range-smul-pow-stabilizes.md) | 280 | `result-track:53831c582c7cd6c885dd37862fe5c7a290db9a9598c4f5469b404604b38d389f` |
| 26 | `theorem` | [exists_pow_succ_smul_dvd](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/exists-pow-succ-smul-dvd.md) | 293 | `result-track:7a2194e00bed519bb02ba964aa356927d5a495724d8f0e05f802bb632a49d1a0` |
| 27 | `def` | [IsArtinianRing](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinianring.md) | 309 | `declaration-track:c607fa6e37f6c7458366300544de6792791f9c91bc03a0a8bf02182d80828dcf` |
| 28 | `theorem` | [isArtinianRing_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinianring-iff.md) | 313 | `result-track:02c88222165e45c890f1cf399805b6344634d45a4c6df66b1d85f876580666c3` |
| 29 | `theorem` | [Ring.isArtinian_of_zero_eq_one](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/ring-isartinian-of-zero-eq-one.md) | 316 | `result-track:71199704db8bbf3c85aa77ae537d38172deb59ed62a13c0c174939a7d8ae504e` |
| 30 | `theorem` | [isArtinian_of_submodule_of_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-submodule-of-artinian.md) | 321 | `result-track:4bbabc97e85124f99d05f647d5c3216ef1f4b785272c1a3ed18800c7ba8f5bb0` |
| 31 | `instance` | [isArtinian_of_quotient_of_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-quotient-of-artinian.md) | 325 | `declaration-track:bd742ce4a566dab6797871bbcec2214c5505f130a2cb614ed35549b03cd24380` |
| 32 | `theorem` | [isArtinian_of_tower](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-tower.md) | 331 | `result-track:41cfb9dd9abef4c3d90f5fd0f169ddaf21fe7fa37955e6afccb4dcad623ee029` |
| 33 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/instance.md) | 337 | `declaration-track:82135ca5760097c76917da97454f48bbb1a1b272cd30907a6ffbf8bee456fbe4` |
| 34 | `theorem` | [isArtinian_of_fg_of_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-fg-of-artinian-source-edition-2.md) | 340 | `result-track:655e551d83f598e37412b641071272834e4cf428434bac54f59bec183c3e566a` |
| 35 | `theorem` | [isArtinian_of_fg_of_artinian'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-of-fg-of-artinian.md) | 358 | `result-track:49418ffea446231c3c6a4c56969cde55959fcab2f1bc0f5686a631a92d36ff5d` |
| 36 | `theorem` | [isArtinian_span_of_finite](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinian-span-of-finite.md) | 366 | `result-track:ca86ed0e28a1fca8c0c0446552b3448baf9667b37bdb417c29d8bbab8d396d64` |
| 37 | `theorem` | [Function.Surjective.isArtinianRing](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/function-surjective-isartinianring.md) | 371 | `result-track:76161d21b2e39404b35b8c97aac3ccce8ee34bc3e18d038c38523f89b1100c1e` |
| 38 | `instance` | [isArtinianRing_range](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isartinianring-range.md) | 377 | `declaration-track:42cd300a966119a7be2338bebbb1a89d5413c8aa82846f3cc4f6bc9650e5c39d` |
| 39 | `theorem` | [isNilpotent_jacobson_bot](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/isnilpotent-jacobson-bot.md) | 388 | `result-track:c346559e829553b7b8381dbdfa14390ff52fa97a3d9b556ab6231c9eda975dd4` |
| 40 | `theorem` | [localization_surjective](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/localization-surjective.md) | 429 | `result-track:8993a24a794813898504e3b50e9ed294e4ec1a70c86e73eec315a95972877f4e` |
| 41 | `theorem` | [localization_artinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/localization-artinian.md) | 444 | `result-track:628b152b04f0f2ef51c054d4d5091d891ee62751b1e8977a6e0408f85a443555` |
| 42 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/instance-source-edition-2.md) | 450 | `declaration-track:950d78582c76e54a9dbcd72c141f71b6f9feb32d57b76a59460d599f95dccc6f` |
| 43 | `instance` | [isMaximal_of_isPrime](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/RingTheoryArtinian.lean/declarations/ismaximal-of-isprime.md) | 455 | `declaration-track:dfdaad7733e1506626254137cf09dd9033ea8c6c44f90ed25c36e9049ef2843d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3fe2afd67ca709b2cd82ff043e942162e3c65885d7b70f40e5f07ee364549a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Ring Neg One Pow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0580a32e48fb1492c513b193ad5b6ec73009f464",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NegOnePow/Variant7f22251f2ae04c10d52163a31f257305e91e84d72a4589882208152c2d841f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0580a32e48fb1492c513b193ad5b6ec73009f464`.

Source path: `GRWTSK/Algebra/NegOnePow/Variant7f22251f2ae04c10d52163a31f257305e91e84d72a4589882208152c2d841f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NegOnePow/Variant7f22251f2ae04c10d52163a31f257305e91e84d72a4589882208152c2d841f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negOnePow](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow.md) | 30 | `declaration-track:43a318c52d01aa1045aa62be9d2aefd99f6d7f20ba510a50df9ad1a037b39844` |
| 2 | `lemma` | [negOnePow_def](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-def.md) | 32 | `result-track:d47a68361c28f2fcbc78fe97cf39bd86b18fba18ec6548f609bd9ca1b0101e9d` |
| 3 | `lemma` | [negOnePow_add](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-add.md) | 34 | `result-track:77ef106954516e7c8c4121df11aff230feff01cac2d5c502a3973fffd7d27a69` |
| 4 | `lemma` | [negOnePow_zero](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-zero.md) | 39 | `result-track:b53067a42cf455ada011ec9b749988458e908576c3295c45ad5e6f79136505ba` |
| 5 | `lemma` | [negOnePow_one](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-one.md) | 42 | `result-track:ddf937d98f568f916d1809731b98deb796502d0018fcba0b86153e73cf79c292` |
| 6 | `lemma` | [negOnePow_succ](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-succ.md) | 44 | `result-track:d93dd5d0c7bacec41f0c605efea3f561be6bf0d51825f3d827cc8fb1f2981519` |
| 7 | `lemma` | [negOnePow_even](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-even.md) | 47 | `result-track:3f3ff5780e152d2a40535e79f734c5e366a3810e833b5f49e83b2f832839d063` |
| 8 | `lemma` | [negOnePow_two_mul](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-two-mul.md) | 52 | `result-track:43bea528359c2998056d2158fdc709542c58aaf9220ac5e8cf96955823d67a41` |
| 9 | `lemma` | [negOnePow_odd](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-odd.md) | 55 | `result-track:cd8bf65db38d9321a1e92a33c10b3d7f8321e82ad7e80ac902723d956cb8fabf` |
| 10 | `lemma` | [negOnePow_two_mul_add_one](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-two-mul-add-one.md) | 60 | `result-track:bca6440d05ab0d8b9f88abd9b80061f977175152a4645049b51b3a569b402158` |
| 11 | `lemma` | [negOnePow_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-eq-one-iff.md) | 63 | `result-track:e18460bfdffc8bffec7576df2563cec28926946a55c1db4ebbe59161530ee2c0` |
| 12 | `lemma` | [negOnePow_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-eq-neg-one-iff.md) | 72 | `result-track:6d2c353c45fdb7a597e8c565953ca7dbe113ddcc15bbd1c07d938dfaffd94b87` |
| 13 | `theorem` | [abs_negOnePow](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/abs-negonepow.md) | 81 | `result-track:e92cdfb2b1fa91b198708325b2d0836e0d9c6d6245cf2c100ad3503455f45ce3` |
| 14 | `lemma` | [negOnePow_neg](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-neg.md) | 85 | `result-track:70f487207f3493a28a9607391b59d80cf20f785341789f57559edc67a06d2300` |
| 15 | `lemma` | [negOnePow_abs](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-abs.md) | 90 | `result-track:b0a0f7b4ede374e80a422888f6fbd9e6864640396806b221234cb7785d84422a` |
| 16 | `lemma` | [negOnePow_sub](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-sub.md) | 93 | `result-track:1e36c52c55d639fec23d1b389747c8835a6b1a6e24ce1fdedf8467493f0c91bc` |
| 17 | `lemma` | [negOnePow_eq_iff](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-eq-iff.md) | 97 | `result-track:51e17e4fd159f5d05fbe84f0314ff625d203a0f935a0317c07a5c818f8f4c679` |
| 18 | `lemma` | [negOnePow_mul_self](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/negonepow-mul-self.md) | 108 | `result-track:1feed9b1c47c71a1eaa23a2594fd7fc7c34d14d8f18035fabb8b7bd4e3012960` |
| 19 | `lemma` | [cast_negOnePow_natCast](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/cast-negonepow-natcast.md) | 111 | `result-track:ab3c0546f0a47f0671c055ddfaad2cb5aa8e318ddc5ecc5833e8884ab8326e7c` |
| 20 | `lemma` | [coe_negOnePow_natCast](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/coe-negonepow-natcast.md) | 114 | `result-track:51f8e1edaae129971430c43e13dadab8f17f795457b348f8baa9af17c4a958bf` |
| 21 | `lemma` | [coe_negOnePow](../../../../AssociativeRingsAndAlgebras/RingNegOnePowPublic.lean/declarations/coe-negonepow.md) | 118 | `result-track:e97b56518c46b969ebd15fec8fb59c9be8ff553429bd635870679971b8be313a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ca131f51f3781f70957b730fd648a9563d14465042d27adef7ed0b51475715f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NegOnePow/Variant7f22251f2ae04c10d52163a31f257305e91e84d72a4589882208152c2d841f7e.lean","GRWTSK/_verification/specifications/Algebra/NegOnePow/Variant7f22251f2ae04c10d52163a31f257305e91e84d72a4589882208152c2d841f7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

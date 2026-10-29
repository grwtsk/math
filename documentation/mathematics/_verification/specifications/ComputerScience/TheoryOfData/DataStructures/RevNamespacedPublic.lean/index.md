# Verification target: Rev Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70676de4ef874dbbd29022cbb1c89c0046d9b1c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rev/Variant01ae78cbfa80f206bfcd508e8cb4c3454a2ac8bc3374f56f7656d73c86f11d44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70676de4ef874dbbd29022cbb1c89c0046d9b1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rev/Variant01ae78cbfa80f206bfcd508e8cb4c3454a2ac8bc3374f56f7656d73c86f11d44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rev/Variant01ae78cbfa80f206bfcd508e8cb4c3454a2ac8bc3374f56f7656d73c86f11d44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rev_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-involutive.md) | 40 | `result-track:5a63d01887c3cfd3207d2fa3eb9e74d8d96b731d2260613000abbc980756b9be` |
| 2 | `def` | [revPerm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/revperm.md) | 45 | `declaration-track:d8b86770885ed46026ca4775cdfd80059105ba5e6f2be13a87e16b3e46dee92b` |
| 3 | `theorem` | [rev_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-injective.md) | 48 | `result-track:964ff94b65d64bb7f59f4a29f6f22b77deff6174f6a52b6016f6178671e0a0fb` |
| 4 | `theorem` | [rev_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-surjective.md) | 51 | `result-track:a5773e957d363ba88147844d2044c4e62ca8fc365fa49dcc68f95a2634e50dad` |
| 5 | `theorem` | [rev_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-bijective.md) | 54 | `result-track:bc5aa25aca3537eda62de0a38f9fb46005d1f67221313401c2607f73f00f10b0` |
| 6 | `theorem` | [revPerm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/revperm-symm.md) | 58 | `result-track:a4171ebc5f58f9b7c5f7970b73eef188213b912e5b7056c649bceebdae61e0e3` |
| 7 | `theorem` | [cast_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/cast-rev.md) | 61 | `result-track:442d450441f13147f7016a6616a11e9a001dace1ddc8dafb8766487f4beadba4` |
| 8 | `theorem` | [rev_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-eq-iff.md) | 65 | `result-track:7ba6857316abcd73b848ac892ac9bc75e767890c64e8b7b428d57b3b9b10842b` |
| 9 | `theorem` | [rev_ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-ne-iff.md) | 68 | `result-track:4f9126598a4978443512ac451ac7564df3a3d47466e6ca0a3f87a73760bd7527` |
| 10 | `theorem` | [rev_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-lt-iff.md) | 70 | `result-track:637a46692705cd9cc1d44b47c77aa6a4b334f40710637806059d0c839182a196` |
| 11 | `theorem` | [rev_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-le-iff.md) | 73 | `result-track:f4210da79ebfa47a8c92355d9fddfca919f73fb77391a611fda7606d0fc00af3` |
| 12 | `theorem` | [lt_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/lt-rev-iff.md) | 76 | `result-track:c40d5f2294103499851eb92a7c3e29d557df0ca31547a3e507abf0d0a944c7b6` |
| 13 | `theorem` | [le_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/le-rev-iff.md) | 79 | `result-track:6cf6015253410b7af6cf5cf83be3c077e980bb20d615864061a55bddead214f7` |
| 14 | `theorem` | [val_rev_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/val-rev-zero.md) | 82 | `result-track:6faafb4c5428c5f79b286bf3d6a9b4ae07fcf05f8da7242d1af69cdb7b2d3226` |
| 15 | `theorem` | [rev_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-pred.md) | 84 | `result-track:485882316f67308314622a4ce2e6e65e43f2b892dcb1bf9b677670b2d4d2bffc` |
| 16 | `theorem` | [rev_castPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-castpred.md) | 88 | `result-track:76b1dcd754ec223f4e5ecc39d855c09b40e8380e5de2f49efb3f7ddefbb3140f` |
| 17 | `lemma` | [succAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/succabove-rev-left.md) | 93 | `result-track:01a872f6ba00e8130fa16da3cf799fc09302c51a1fb60150570f7535ce5148ce` |
| 18 | `lemma` | [succAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/succabove-rev-right.md) | 101 | `result-track:43ab5022e1711189fce154fa9fb3f7312e5d47a295c574e32431787d4d0e623d` |
| 19 | `lemma` | [rev_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-succabove.md) | 105 | `result-track:55bde051d23e1a0156afedd4d550afd67fb99e9ff4db703c1c8756cd7c5854c8` |
| 20 | `lemma` | [predAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/predabove-rev-left.md) | 109 | `result-track:9a1f19f0695745f0fbeba6063913dfdff3539ceb7911b83e153b9c057cf7ad96` |
| 21 | `lemma` | [predAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/predabove-rev-right.md) | 117 | `result-track:3d9d33aab09905f9d6de59ccb1beaffdad214da02fb762d73ae3e57e5dc2d1b9` |
| 22 | `lemma` | [rev_predAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-predabove.md) | 121 | `result-track:a16285dff8b861ff2503b31b8044c0cc5385ceef8d16a285d185df9c79e0c3ca` |
| 23 | `lemma` | [add_rev_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/add-rev-cast.md) | 124 | `result-track:089cc644f3029202583ddcb1f3228886e4635b1b510632047c7d6c3185ae17d2` |
| 24 | `lemma` | [rev_add_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespacedPublic.lean/declarations/rev-add-cast.md) | 128 | `result-track:dc309b44eb60cb9b6c085f13f84b85ff58cdc02c6cdc38f0753a81310e5512cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0a858e4ff3e921dccbe95332e0fdc8419e4fe8efdebce9d7cfcd51ee4c3b125 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rev/Variant01ae78cbfa80f206bfcd508e8cb4c3454a2ac8bc3374f56f7656d73c86f11d44.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Rev/Variant01ae78cbfa80f206bfcd508e8cb4c3454a2ac8bc3374f56f7656d73c86f11d44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

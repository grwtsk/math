# Verification target: Turing Degree Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24ff9eb0ad7a9b1674e58f94621649a220dd0bbf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant443aee124fc506f48f5dde062b88f48cdf1f90c82a36b00c38362e8e63f9e59b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24ff9eb0ad7a9b1674e58f94621649a220dd0bbf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant443aee124fc506f48f5dde062b88f48cdf1f90c82a36b00c38362e8e63f9e59b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant443aee124fc506f48f5dde062b88f48cdf1f90c82a36b00c38362e8e63f9e59b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TuringReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingreducible.md) | 47 | `declaration-track:6b83c20d3e580e77909395b23c92a937e2021e7e45839e708d1534cfc6e333e7` |
| 2 | `abbrev` | [TuringEquivalent](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingequivalent.md) | 53 | `declaration-track:e7eb529ee03967c838853f0c3001ca3bb1864fa2e98ceba31c1a2262ad20976c` |
| 3 | `lemma` | [Partrec.turingReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/partrec-turingreducible.md) | 62 | `result-track:fc0c7581a25f37827cc2c52041c94fcc29ef511bdf9458cee6721b435c061012` |
| 4 | `lemma` | [TuringReducible.partrec_of_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingreducible-partrec-of-const.md) | 66 | `result-track:4f7b938e81a6d7825516c896e10c0cb7ab47fb4effe313661daa23324edb4589` |
| 5 | `theorem` | [partrec_iff_forall_turingReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/partrec-iff-forall-turingreducible.md) | 71 | `result-track:e4c4671137adab2d2489ef94cb2c9301f101f3bf51a7637a7f33f8ac26f06e9c` |
| 6 | `theorem` | [TuringReducible.refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingreducible-refl.md) | 74 | `result-track:7473a4a62eaf6338ebd3a717ad82cdf0d8b212bbe3e6a244947b390c53db3fee` |
| 7 | `theorem` | [TuringReducible.rfl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingreducible-rfl.md) | 75 | `result-track:999dd3553d0032973c0e341dd2956bf4f7b677f924ef079f988fa80ef1bb8c14` |
| 8 | `theorem` | [TuringReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingreducible-trans.md) | 77 | `result-track:418461c2c8b5af2dac3d32c22ff5cfea4fe9c2fda625c80d4b3fe9b311573fff` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:6572ac06148e1f2fef085f1d86279de824535388dd10201a771019445ecdbfc3` |
| 10 | `theorem` | [TuringEquivalent.equivalence](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingequivalent-equivalence.md) | 84 | `result-track:f880aee41cfab4be31cac4ade5f34f656249a4b5c8cf7cb7411d14e0ff567e05` |
| 11 | `theorem` | [TuringEquivalent.refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingequivalent-refl.md) | 88 | `result-track:9b1b0b28c11d7f85249195bb92970e7750d005a0b8158b97f077ba723b4a34bb` |
| 12 | `theorem` | [TuringEquivalent.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingequivalent-symm.md) | 92 | `result-track:59a9e2a78790ab553576ef858e1b4db7561880d9199ea37636239b4cede1c36c` |
| 13 | `theorem` | [TuringEquivalent.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingequivalent-trans.md) | 96 | `result-track:f7b448f79247b015b4bfa1e38ce840081272cf8569ac74da8cd60813d1ff0287` |
| 14 | `abbrev` | [TuringDegree](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingdegree.md) | 102 | `declaration-track:955baa7831ca381f8d1d1d5ed03aa6d6b31eb85d775d9e2824c761774427c670` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/instance.md) | 106 | `declaration-track:22bbaa41df100cfa3c6beec32bf586c5d3ba404922bd50e9dc6e7e5155e64f1d` |
| 16 | `instance` | [TuringDegree.instPartialOrder](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringDegreePublic.lean/declarations/turingdegree-instpartialorder.md) | 111 | `declaration-track:56503b1a5311fb3624fd9b832fc635b6d71942fafa309922124f55512b7a61b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa83e14f1b92e8b7b2cf5db45ee9fc3c5179a7bccdd8bfab19e08547dfb21c1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant443aee124fc506f48f5dde062b88f48cdf1f90c82a36b00c38362e8e63f9e59b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variant443aee124fc506f48f5dde062b88f48cdf1f90c82a36b00c38362e8e63f9e59b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

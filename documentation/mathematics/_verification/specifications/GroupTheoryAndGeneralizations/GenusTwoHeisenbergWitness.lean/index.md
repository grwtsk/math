# Verification target: GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ae273ead061bfa836d5fee59f0b8a9a9f4c785",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/GenusTwoHeisenbergWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ae273ead061bfa836d5fee59f0b8a9a9f4c785`.

Source path: `GRWTSK/GroupTheory/Words/GenusTwoHeisenbergWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/GenusTwoHeisenbergWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive`](../../../../GroupTheoryAndGeneralizations/IntegralHeisenbergPrimitive.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.GroupTheory.PresentedGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [genusTwoRelator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/genustworelator.md) | 43 | `declaration-track:be2d9eb81327f6a54be9a687add58ac11119eee51c01e2977595d84ab7d320b3` |
| 2 | `abbrev` | [GenusTwoPresentedGroup](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/genustwopresentedgroup.md) | 49 | `declaration-track:b1a433dfe186258ad7642c7f2cc930e0982ada1e30985fbc199ae39c028e5cab` |
| 3 | `def` | [generator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/generator.md) | 53 | `declaration-track:e64e81c1162e77f3f1eee3ff81a8b8cbe4cc2884da4d3ac1582b5be1f60c9d2a` |
| 4 | `def` | [heisenbergLetter](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/heisenbergletter.md) | 58 | `declaration-track:e455c1bbe6914271d78cac5f7a1ad75018e8d9376e8f6bedb70eed95d12a49c4` |
| 5 | `theorem` | [heisenbergLetter_respects_relator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/heisenbergletter-respects-relator.md) | 68 | `result-track:dcf1ae1b88b95dbb20caa18c44eba52f336f3be36791b15f37f0520b165fb228` |
| 6 | `def` | [toHeisenberg](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/toheisenberg.md) | 78 | `declaration-track:842a6307d51cf8e0d05ea6e6e17085671995e68dc02e5b45668cb5bfab599b41` |
| 7 | `theorem` | [toHeisenberg_generator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/toheisenberg-generator.md) | 87 | `result-track:5302e5900bb73a09d18e4addc2b4dd5cb7cb417f82d9dea55256f8d169ad374d` |
| 8 | `def` | [separatingCommutator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/separatingcommutator.md) | 93 | `declaration-track:5b2ec75d88c4ebb3501d52f78158dd129b16f5915866e7472ddeca871208a148` |
| 9 | `theorem` | [toHeisenberg_separatingCommutator](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/toheisenberg-separatingcommutator.md) | 97 | `result-track:61a21577a65a226c1fb69b607548aeb7b65de86361206e8882dcbeb124ce1b1d` |
| 10 | `theorem` | [separatingCommutator_primitive](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/separatingcommutator-primitive.md) | 107 | `result-track:012be699785b91836cb3c8f20e434f5d4b3b779e50409c636d9e4f0f6fb1a149` |
| 11 | `theorem` | [separatingCommutator_abelianization_eq_one](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/separatingcommutator-abelianization-eq-one.md) | 115 | `result-track:21a3fd57850447e238ee24b6f4f864e9959398878c6e68eff16e0348c36ea25b` |
| 12 | `theorem` | [separatingCommutator_integerCharacter_zero](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/separatingcommutator-integercharacter-zero.md) | 124 | `result-track:9cc0d052df9c0cc4a49cde9021664e5fe20a66857ef2d7cfee87a60394c90803` |
| 13 | `structure` | [HomologyInvisiblePrimitiveWitness](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/homologyinvisibleprimitivewitness.md) | 140 | `declaration-track:b014d2ab094c6c50edb3ced491403863bf35715be720da038a4004afdd7d54e6` |
| 14 | `theorem` | [HomologyInvisiblePrimitiveWitness.no_integer_unit](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/homologyinvisibleprimitivewitness-no-integer-unit.md) | 147 | `result-track:7e84f36a3c17ef8e8ffa60600eeeedf5089188bff0e5f62df9ba0e1fe5f5c0a5` |
| 15 | `def` | [genusTwoWitness](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/genustwowitness.md) | 168 | `declaration-track:e5a0393da17bbbf82732ec0316228f16ff7d37ee41293ceb79f07e65513c8015` |
| 16 | `theorem` | [genusTwo_no_integer_unit_certificate](../../../../GroupTheoryAndGeneralizations/GenusTwoHeisenbergWitness.lean/declarations/genustwo-no-integer-unit-certificate.md) | 176 | `result-track:4ed89e5b83736c26de96e40d716b65bc3f0cfeefeffa29d0085dce57043e0a88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4f6ddd590223de0b7394b77c401adcf39114656d129f44c2ae162898394fb93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/GroupTheory/Words/GenusTwoHeisenbergWitness.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Words/GenusTwoHeisenbergWitness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

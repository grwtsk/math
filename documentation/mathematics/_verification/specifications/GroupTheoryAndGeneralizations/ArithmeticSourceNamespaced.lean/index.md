# Verification target: Arithmetic Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d37d3b5ba79d4de312992d614e55757566e4c96",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant9a04d41e9ad74f86f7e251db9622c43f45a7663f0d6bcbb1437d1333c2d8cbe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d37d3b5ba79d4de312992d614e55757566e4c96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant9a04d41e9ad74f86f7e251db9622c43f45a7663f0d6bcbb1437d1333c2d8cbe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant9a04d41e9ad74f86f7e251db9622c43f45a7663f0d6bcbb1437d1333c2d8cbe9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.DiscrepancyTrace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.ArithmeticEnhancement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithmeticEnhancement](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/arithmeticenhancement.md) | 24 | `declaration-track:ad87846ba9b9bccb58a797bfaef81fd6ee21c22ef8fcdbdf17ddb932d3320033` |
| 2 | `structure` | [ArithmeticSource](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/arithmeticsource.md) | 27 | `declaration-track:c57bc601f10e2509011309206617dd5158248e09b70cea17502974e70ec02dbd` |
| 3 | `structure` | [ReducedArithmeticSource](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/reducedarithmeticsource.md) | 36 | `declaration-track:a6fa4e54eee8bf090a53119389bdc0c230948c0964947481a64c30385057dfbd` |
| 4 | `def` | [invariant](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/invariant.md) | 44 | `declaration-track:56e4e69168b49be94ddfb862b06040f3d5c268661f26b558b50a7512246c92a7` |
| 5 | `def` | [reduced](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/reduced.md) | 49 | `declaration-track:8b42ae535174391c1b2351bcfba4d88292e5fe388400a427aacff1d014ca19ab` |
| 6 | `theorem` | [invariant_reduced_eq_zero](../../../../GroupTheoryAndGeneralizations/ArithmeticSourceNamespaced.lean/declarations/invariant-reduced-eq-zero.md) | 54 | `result-track:2e9b81c9355caa5bda708d6e45c3c9e6da55f5bcf5d9a68379ab850e6b87fe18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4b82e5997500961022ca7681a839d150145a5c7f1c50097da35cfd076e52da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant9a04d41e9ad74f86f7e251db9622c43f45a7663f0d6bcbb1437d1333c2d8cbe9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ArithmeticSource/Variant9a04d41e9ad74f86f7e251db9622c43f45a7663f0d6bcbb1437d1333c2d8cbe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

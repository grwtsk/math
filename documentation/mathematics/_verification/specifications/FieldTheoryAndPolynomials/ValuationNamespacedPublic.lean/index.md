# Verification target: Valuation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ff740c44d0e779ddb7e530574124d34c1efd5a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ff740c44d0e779ddb7e530574124d34c1efd5a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean.json)

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
| 1 | `def` | [inftyValuationDef](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluationdef.md) | 59 | `declaration-track:50ccdc36e32322cadad6f337f0595a9c3366f1cbb70def97a63209b375b472ad` |
| 2 | `theorem` | [InftyValuation.map_zero'](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-map-zero.md) | 62 | `result-track:5297131f6941d3afc2f80764e10c5a4983a8deab389ff24d7a4d4299784a83c9` |
| 3 | `theorem` | [InftyValuation.map_one'](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-map-one.md) | 65 | `result-track:5247e67efcbeca025185bafdb41acbcb1208a5c9af7d667ccbe93723116764b0` |
| 4 | `theorem` | [InftyValuation.map_mul'](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-map-mul.md) | 68 | `result-track:a0b50b5ad82ae27fd974f3a22f78b5d491bc8a73d441298bfd56b0bc0619540d` |
| 5 | `theorem` | [InftyValuation.map_add_le_max'](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-map-add-le-max.md) | 77 | `result-track:3625075d420e2ef207ab9d8c8ffc6b302372240eb3b09bf72f4253dfe465ae1e` |
| 6 | `theorem` | [inftyValuation_of_nonzero](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-of-nonzero.md) | 84 | `result-track:e2c9d24552c987a785c28eb1e6b0634abc178881f594508f469120c1de988909` |
| 7 | `def` | [inftyValuation](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation.md) | 89 | `declaration-track:e8e1a4a1d787596e4b932e0a8859a3dbdb6a909e3b193c095be20f38324753a2` |
| 8 | `theorem` | [inftyValuation_apply](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-apply.md) | 96 | `result-track:8ae86c1c0abe3790fb446db374664e75959accc6506b0d18bfae2aa416137fd3` |
| 9 | `theorem` | [inftyValuation.C](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-c.md) | 100 | `result-track:223f06403b6d0d08de3c779f205ea0491bf06c64a571210a14c8cc727e8dd28d` |
| 10 | `theorem` | [inftyValuation.X](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-x.md) | 105 | `result-track:36e1d4c94a9fa07689c6886ddcadc51bcb49e54bff34598e43840680c9277376` |
| 11 | `lemma` | [inftyValuation.X_zpow](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-x-zpow.md) | 109 | `result-track:6d3fca12c45e4c252b59b187ab65ba0f8a5236034a37f190f73b54ddf21732d3` |
| 12 | `theorem` | [inftyValuation.X_inv](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-x-inv.md) | 111 | `result-track:4b2bde88415f47278836e04d1c377710b3561acfeaf5eff818d86a3fd9ae72ad` |
| 13 | `theorem` | [inftyValuation.polynomial](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvaluation-polynomial.md) | 116 | `result-track:736e0e3c791421ae965754bce6fcd87140fe192f1b6ff1a1b12b5cfdf7e55595` |
| 14 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 120 | `declaration-track:beea8f6fb7d7b64339c1493467ab0080a8e8a1677661d37c9f4b23fcd199c7e6` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:2f5d2f294feb6e76b54cdd0cc2ee51071a17213ff2bac434aea07f7693943b4f` |
| 16 | `def` | [inftyValued](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvalued.md) | 127 | `declaration-track:9a02a7ee8ac6b36da4dea66a7305a987ee32c2083a5d7329ffbb50fb7cd1b923` |
| 17 | `theorem` | [inftyValued.def](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/inftyvalued-def.md) | 130 | `result-track:53cc3eadeb5829ffe8c57677365a8fc717a02d6f8bc2aeae1f0be60c37a635e1` |
| 18 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 143 | `declaration-track:ed04c03c0cdaed7784d5d70a1f3c3776796cc70ea51dee27400fc8e5bd18ec6d` |
| 19 | `def` | [Valuation Namespaced Public](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/completionatinfty.md) | 146 | `declaration-track:4595b51127d3159afd1aa52075d3639176e48df881fb22fa07854431d15b01a0` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/instance.md) | 150 | `declaration-track:045cde614230c8238121632a59368f598c08a5858c979006ffee0850d871e6a3` |
| 21 | `theorem` | [valuedCompletionAtInfty.def](../../../../FieldTheoryAndPolynomials/ValuationNamespacedPublic.lean/declarations/valuedcompletionatinfty-def.md) | 155 | `result-track:1dbd674fbe74237765187a013d3657c927a484ea5f6d653ab1d7781851d66f9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a2ae884b06f2dd75684614674424e9aa818581c755e4e9a434f872e66ce3c84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

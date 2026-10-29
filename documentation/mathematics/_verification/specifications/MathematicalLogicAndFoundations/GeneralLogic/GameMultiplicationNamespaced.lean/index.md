# Verification target: Game Multiplication Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c51b8f7c76f1fd0d5dd5439b1591b4a2b348d386",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c51b8f7c76f1fd0d5dd5439b1591b4a2b348d386`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [star'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/star.md) | 36 | `declaration-track:72787cef3b14d57a2acf80a0d0c1ce8857707047ea0afd89daf1f57e08c73e3b` |
| 2 | `theorem` | [neg_star'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/neg-star.md) | 39 | `result-track:d4ba041469228479ea6bb879f57547de307dab1a962ded0a3caf52f8195c18d7` |
| 3 | `theorem` | [star'_equiv_star](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/star-equiv-star.md) | 43 | `result-track:364b08d3df22f49c7088b648fcf931ee2ea1bf1956cd8c18b923dc19f40427f4` |
| 4 | `theorem` | [star_sq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/star-sq.md) | 56 | `result-track:dc36ecbdc577137008a9fe653cf68e1a4dc67c135713c65082b9007fd74a1ff1` |
| 5 | `theorem` | [star'_mul_star_lf](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/star-mul-star-lf.md) | 77 | `result-track:c02e307f908b516559778a5b5ccfa357cf39babed7c5f36aedb62d149117714d` |
| 6 | `theorem` | [mul_not_lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/GameMultiplicationNamespaced.lean/declarations/mul-not-lift.md) | 84 | `result-track:53b9e60b24db425f54eb7d1bba5f78f5618bcfc0e67311e5711e2dc0df5c7427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4f488ea12e9209cbc80a8785fe2bed98101a7efd471aadb225ccb929f457c8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

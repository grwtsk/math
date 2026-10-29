# Verification target: Functional Equation Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c60b595818a3466b2d990a562abd905b99833d6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c60b595818a3466b2d990a562abd905b99833d6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalReflection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/declarations/criticalreflection.md) | 30 | `declaration-track:ca2c72f16cc41a4b08abba14b5245c0d395d6bab203ac81dbdf4e8d6b66c1bd3` |
| 2 | `theorem` | [criticalReflection_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/declarations/criticalreflection-re.md) | 34 | `result-track:18d37edf4c0412c4f9953bb5c24f3b1d6c0328646049106e65946d3dc0019bfa` |
| 3 | `structure` | [PrimitiveFunctionalEquationSquare](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/declarations/primitivefunctionalequationsquare.md) | 48 | `declaration-track:6aa0e3d4a5132ac60690ac0d1f3b64d231a79c7b271b315faccd5e3d8e6fcf27` |
| 4 | `theorem` | [PrimitiveFunctionalEquationSquare.reflects_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition2.lean/declarations/primitivefunctionalequationsquare-reflects-zero.md) | 66 | `result-track:860853a9f134a2c1015e87f7035a05038c55982cd193f62b87f6294afce2869d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c00cd3a03f4d729352ecca2e8525bb1fdbc43fc342cb56b2198afa8b956e553a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant6e840926d4d2d9c7ab8dfccba1664eaeb64e358c1e2cd12d2d6509ef540cbfb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

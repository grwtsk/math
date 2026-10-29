# Verification target: Monoid Algebra Division Division Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce1724067d27707884882363e992f2831e9c3a5b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce1724067d27707884882363e992f2831e9c3a5b`.

Source path: `GRWTSK/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divof.md) | 50 | `declaration-track:83a27214a1ec8d03bf5d031ffaffbd7528fd8c1a61a5ae1fc82489ccce37a99a` |
| 2 | `theorem` | [divOf_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divof-apply.md) | 61 | `result-track:b8af6a5515659a2fcbe8219bc82c2951ce31d00b48fdfe4dff5c6b65b3169dea` |
| 3 | `theorem` | [support_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/support-divof.md) | 66 | `result-track:edac33c663397cc8d7b5c5c9d4cdae53153cc00ac2cee262a5171a108122aafc` |
| 4 | `theorem` | [zero_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/zero-divof.md) | 73 | `result-track:12cc3e1a5543f5598b6525e94462d04c9d5bb99d851a57dd397973ce52bda093` |
| 5 | `theorem` | [divOf_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divof-zero.md) | 78 | `result-track:067aacb49ec2d8ebbf90a2ec4d0c6019bb21ff9549f94c098de5c98e34b18277` |
| 6 | `theorem` | [add_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/add-divof.md) | 83 | `result-track:ecec2cbf7a3a8b10b318093c7573a8b640ab2ca8f294d034954ff8fd6d0bae39` |
| 7 | `theorem` | [divOf_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divof-add.md) | 87 | `result-track:b5a499eeb1539dcb6586117eeb0eed26ce2c7571b8a01e7ddf75af17b17005fa` |
| 8 | `def` | [divOfHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divofhom.md) | 94 | `declaration-track:cc8b0745fb82f55884e28f569b4897c7af36f6bafe5615b0d13791d2d1a864b8` |
| 9 | `theorem` | [of'_mul_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/of-mul-divof.md) | 106 | `result-track:de4ace3be2ebb403f64b79195611aadd45fee2d927d06b08cf71f2f0abf96873` |
| 10 | `theorem` | [mul_of'_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/mul-of-divof.md) | 113 | `result-track:bdc2d2f8f61246893840753c0d9f060c93d801f854326cdc3a76b9ca86e6e109` |
| 11 | `theorem` | [of'_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/of-divof.md) | 121 | `result-track:5c0e6b4e3b486550de16bc1ccda92c9830f0f08eda1976b240ef9362a41e3bd0` |
| 12 | `def` | [modOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof.md) | 126 | `declaration-track:b665e88b311a1a9a2cfdcb176b01543f5f28c7948fca1ba38bc9f544e5d409d3` |
| 13 | `theorem` | [modOf_apply_of_not_exists_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof-apply-of-not-exists-add.md) | 133 | `result-track:bf929994448a9799641ba67194748607ba355647cf9b62b2a0b3fb9fd109c62b` |
| 14 | `theorem` | [modOf_apply_of_exists_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof-apply-of-exists-add.md) | 139 | `result-track:90859d5e59a0bfc2ef8da9ea80d7c4af5bd9eeeb952b10a811cad9459aa05fcf` |
| 15 | `theorem` | [modOf_apply_add_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof-apply-add-self.md) | 145 | `result-track:b6d1d8b0c7c1f471bbef1e3485984de48e3bc6ef54cd15ccdcb08749e35fd1d3` |
| 16 | `theorem` | [modOf_apply_self_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof-apply-self-add.md) | 150 | `result-track:2308a806f9defaaf212ca778347ad56a47a69a48898f6c2ab2ba1641f3f70573` |
| 17 | `theorem` | [of'_mul_modOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/of-mul-modof.md) | 154 | `result-track:d21a8ace81d642d9eaa4b8a9c0db918a46d33178dbd0344ee4735be7020e98c2` |
| 18 | `theorem` | [mul_of'_modOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/mul-of-modof.md) | 162 | `result-track:0005730800eaa8ed399354b41af516df77acac485acb70bbf404ada03d62c59a` |
| 19 | `theorem` | [of'_modOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/of-modof.md) | 171 | `result-track:e67f63aaffb6af536c4bce55b00d95d72df789c5e33a53f3818c5b8129d6c829` |
| 20 | `theorem` | [divOf_add_modOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/divof-add-modof.md) | 175 | `result-track:03144aa81d8c2d987df0cfbfef42d1070c5a253f364a0d40bc915302a84dd680` |
| 21 | `theorem` | [modOf_add_divOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/modof-add-divof.md) | 189 | `result-track:e67c6305003f5569f8e4c9d2566eb35f04811dffbe27e34f1790a4d86ee5b251` |
| 22 | `theorem` | [of'_dvd_iff_modOf_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDivisionDivisionSourceEdition2.lean/declarations/of-dvd-iff-modof-eq-zero.md) | 193 | `result-track:c22cbdb91d0c0ed03d9d3052e08660c9bcbf87aaefeb673c3c7d9aaa0f998699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd86826a190feb5c8717abb1b91ef641ec93b87a70345377392f1efddd462e32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Division/Variant493d3888dd9e8d56dcf0ffa54896ffda3dd5fb6adfbd9c8ea011cd287240d985.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

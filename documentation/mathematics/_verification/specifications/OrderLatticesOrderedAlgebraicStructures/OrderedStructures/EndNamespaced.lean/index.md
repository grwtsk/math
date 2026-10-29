# Verification target: End Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9b76bfa10f8655b6f7b2f6a4b34a7a12fdb4e6f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/End/Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9b76bfa10f8655b6f7b2f6a4b34a7a12fdb4e6f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/End/Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/End/Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.End` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [applyMulAction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/applymulaction-source-edition-3.md) | 28 | `declaration-track:cae6bdeee07c058d8d6c80bb3db0035eac180c8814278f13340033a430db1269` |
| 2 | `lemma` | [smul_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/smul-def-source-edition-3.md) | 33 | `result-track:aaebe483b554a6962e4a1a50f473bb6eaac5541d1f69a9cdccd4c7dfbd8d7fca` |
| 3 | `instance` | [apply_faithfulSMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/apply-faithfulsmul-source-edition-3.md) | 35 | `declaration-track:cc57f6f7c42947f2829ac1ceb5e19a4b2705d729a92f7aab00a7b397b73b8c6e` |
| 4 | `instance` | [applyMulAction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/applymulaction.md) | 43 | `declaration-track:53f3e66761d9fe5a5ee35fdc7933afffecbe28ece3b17aa71d050b460f798aab` |
| 5 | `lemma` | [smul_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/smul-def-source-edition-2.md) | 48 | `result-track:8a33b9aa3bb26cb085a8e84b7392d3b5e631f78f4ee08b88059673626ee8c34b` |
| 6 | `instance` | [apply_faithfulSMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/apply-faithfulsmul.md) | 50 | `declaration-track:1d911abca13d4e62ce1668ef8ccc4baaca4bf084dc4c971333c28a9cc2d368cb` |
| 7 | `instance` | [applyMulAction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/applymulaction-source-edition-2.md) | 58 | `declaration-track:6cb569cae7fb7443803e0dea660f09bd698d845ab60d61ada16a7247604d5859` |
| 8 | `lemma` | [smul_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/smul-def.md) | 63 | `result-track:1f64312181cf5afb3fcc57f2173ad767eebd4ab702344a6adca97d50133c3813` |
| 9 | `instance` | [apply_faithfulSMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/EndNamespaced.lean/declarations/apply-faithfulsmul-source-edition-2.md) | 65 | `declaration-track:6097ddf89d2ca33e3c9d3412418baddde4f2205b7c72d9f69c027c65287bd982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ae8ffd0543fecb3193656b93071ed6db2890bf2174d7d550c5f7988a3999932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/End/Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/End/Variant5ab093019e42a3c4d7f6ba9cb89bbe96669329f2fc621cd01bb6327249870696.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

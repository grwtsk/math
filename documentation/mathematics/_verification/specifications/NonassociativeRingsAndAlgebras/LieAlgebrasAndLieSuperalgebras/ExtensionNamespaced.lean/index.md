# Verification target: Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b177a0bbe4e4a4507d760190c1d7aa42ad2ae4d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Extension/Variantd51cbea5b4ab50964c06a938a8fd6fd73d81e2b40079b747e57c36877fe88704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b177a0bbe4e4a4507d760190c1d7aa42ad2ae4d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Extension/Variantd51cbea5b4ab50964c06a938a8fd6fd73d81e2b40079b747e57c36877fe88704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Extension/Variantd51cbea5b4ab50964c06a938a8fd6fd73d81e2b40079b747e57c36877fe88704.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsExtension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/declarations/isextension.md) | 45 | `declaration-track:46be755409802948adadffb7ff7ddcfa025c6a4ea034fab0bb92daefdfac91be` |
| 2 | `structure` | [Extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/declarations/extension.md) | 53 | `declaration-track:72cf0b13626a5d74c3b204989cde92b97daf42f38b3a5f5eab17cdc6df632696` |
| 3 | `def` | [IsExtension.extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/declarations/isextension-extension.md) | 67 | `declaration-track:a0c175c62227267413de3eb279a9dffdc18a50092785dceee3e920878caa35a5` |
| 4 | `theorem` | [isExtension_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/ExtensionNamespaced.lean/declarations/isextension-of-surjective.md) | 72 | `result-track:ba502b339eeb32d88f7e3bedc5658d5ca2b071c5ed7df0b5dc308077ff8137d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88a7bf427c4041b733a727ec6dd5d5cfb7e47caf46563c62efef73e668466009 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Extension/Variantd51cbea5b4ab50964c06a938a8fd6fd73d81e2b40079b747e57c36877fe88704.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Extension/Variantd51cbea5b4ab50964c06a938a8fd6fd73d81e2b40079b747e57c36877fe88704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

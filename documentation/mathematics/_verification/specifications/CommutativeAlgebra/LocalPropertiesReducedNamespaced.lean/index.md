# Verification target: Local Properties Reduced Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51499fdbba9a61b48ea39ad1a3a3e2813d06ec8b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalPropertiesReducedNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalPropertiesReducedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51499fdbba9a61b48ea39ad1a3a3e2813d06ec8b`.

Source path: `GRWTSK/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isReduced_localizationPreserves](../../../../CommutativeAlgebra/LocalPropertiesReducedNamespaced.lean/declarations/isreduced-localizationpreserves.md) | 32 | `result-track:de32c2890aa1c43b9e8e7773b0dd5624c7c147550ff2951e15cbbae5e23e2b66` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalPropertiesReducedNamespaced.lean/declarations/instance.md) | 51 | `declaration-track:8360b294ed353c134f16bfd5deb730ec89018a4459055f7ebf875b510894dcc9` |
| 3 | `theorem` | [isReduced_ofLocalizationMaximal](../../../../CommutativeAlgebra/LocalPropertiesReducedNamespaced.lean/declarations/isreduced-oflocalizationmaximal.md) | 55 | `result-track:0f9e4a32769841028995c15d5aa56fd7665919ffe96cc9a6af1ebb0bccb8866b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61820f7c3e53313a2cdb95be7c1bcd737d20e3ddd45b13dc7cdebd3f5073b643 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean","GRWTSK/_verification/specifications/Algebra/Reduced/Variant4499c1738482f74e80b236e1ec59f836f5ca257570f7e099ab336ec00686db6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

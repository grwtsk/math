# Verification target: GRWTSK.Algebra.GroupTheory.Duality.Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70c8c253bc9c6f61b1aec6c216b2567b651e08b2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70c8c253bc9c6f61b1aec6c216b2567b651e08b2`.

Source path: `GRWTSK/Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FiniteAbelian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [dvd_exponent](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/declarations/dvd-exponent--ef10306989bec2cac5cc1dd5.md) | 24 | `result-track:ef10306989bec2cac5cc1dd5a023c3e46d5f6fb13eef3d90853872ab519506d6` |
| 2 | `lemma` | [exists_apply_ne_one_aux](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/declarations/exists-apply-ne-one-aux--ee4b4f685d10e72d01eb745c.md) | 36 | `result-track:ee4b4f685d10e72d01eb745c3dc4daf76e97e801102e716439c6201beff30ec3` |
| 3 | `theorem` | [exists_apply_ne_one_of_hasEnoughRootsOfUnity](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/declarations/exists-apply-ne-one-of-hasenoughrootsofunity--e894103ffac5a6100dfd2d13.md) | 57 | `result-track:e894103ffac5a6100dfd2d13de78d698dd5d0ba538e8beb0e1548ebe8dc8645b` |
| 4 | `theorem` | [monoidHom_mulEquiv_of_hasEnoughRootsOfUnity](../../../../../../Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean/declarations/monoidhom-mulequiv-of-hasenoughrootsofunity--6b4a0f6b780459257e6401e2.md) | 67 | `result-track:6b4a0f6b780459257e6401e2d84d6f7b74f696749b12adc58c4e8f7fa799c02f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63b55096b3d1ff856648d7254d6c2dbd8ee48474ca8193e37a66e0bd33ba5a33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Duality/Variant71234448fddbe3b52e7d3094401e3c463fcdc3b9edae1fb2c0b82cb6f1cb99c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

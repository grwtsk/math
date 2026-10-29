# Verification target: Galois Descent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25916c705ecbcfbc99a19b1b5ae017a28b0c1e2f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25916c705ecbcfbc99a19b1b5ae017a28b0c1e2f`.

Source path: `GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GaloisCocycle](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/declarations/galoiscocycle.md) | 25 | `declaration-track:f73226fdcf857b4cf34e1f3d7e1a87eb3ffc2f18e3eef6566ef7f6acc7e675c0` |
| 2 | `structure` | [GaloisDescentDatum](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/declarations/galoisdescentdatum.md) | 39 | `declaration-track:db7b80b7bcaec1dcf049945a677cac09573fb3b87903af0dd681c2cde9e11115` |
| 3 | `structure` | [EffectiveDescentCertificate](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/declarations/effectivedescentcertificate.md) | 51 | `declaration-track:21c9905406df2e8c0f2c7ccc6c98ad032cf7064b575806209baf3f4359f139bb` |
| 4 | `theorem` | [EffectiveDescentCertificate.exists_descended](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/declarations/effectivedescentcertificate-exists-descended.md) | 62 | `result-track:cb3f6f10eb3e4159a44ba1c8af9c733cee9f16b6d438d608c7073b4ee65e0170` |
| 5 | `theorem` | [EffectiveDescentCertificate.compatibility](../../../../GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/declarations/effectivedescentcertificate-compatibility.md) | 78 | `result-track:2d6bb776434bc565ca3e32f601ba93b73f7f3607e529d069eba3959ef2046830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60d3c277b9be9f32fd921e8154e9beb530fc6518ad64cd6b07fe2cd1754efe44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

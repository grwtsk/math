# Verification target: Equiv Opposite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b093878f76954438271f254ad4c8e15fc66928",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant725b1af5d0578824342a0ec461a848a3f221fda3cb0f15a6cc3db6781aa57d34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b093878f76954438271f254ad4c8e15fc66928`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant725b1af5d0578824342a0ec461a848a3f221fda3cb0f15a6cc3db6781aa57d34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant725b1af5d0578824342a0ec461a848a3f221fda3cb0f15a6cc3db6781aa57d34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAddEquiv](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/opaddequiv.md) | 27 | `declaration-track:223c1933da47fdd83de348c8ce032aebf4f4c7e5373e0a9f561a561112884af2` |
| 2 | `lemma` | [opAddEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/opaddequiv-toequiv.md) | 31 | `result-track:fd8cd433dc9f0812dcdb2324ce1531e7d921c4d22c6d46ccb9e858354a75556b` |
| 3 | `def` | [opMulEquiv](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/opmulequiv.md) | 39 | `declaration-track:b7686b81be4243dab6e9938ec2bdf8d11442e0729fd57ceb58ee606a35070caf` |
| 4 | `lemma` | [opMulEquiv_toEquiv](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/opmulequiv-toequiv.md) | 43 | `result-track:076855283aff3f6e4a0653e2d0508faece2263995f187ad252ec7b083309ff59` |
| 5 | `def` | [MulEquiv.inv'](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulequiv-inv.md) | 54 | `declaration-track:81b0c4f25b46577569e6a478507b6fb94f10901acc30e09e0f9001ed10b27e63` |
| 6 | `def` | [MulHom.toOpposite](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulhom-toopposite.md) | 62 | `declaration-track:1589795957638c86d43d837959c4dbcdf7e6478195974f4047d4c02cae50959c` |
| 7 | `def` | [MulHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulhom-fromopposite.md) | 72 | `declaration-track:6061fc5733875d56cdc349578757aaf042dbd0bf9a82902973d7b373464e0f5f` |
| 8 | `def` | [MonoidHom.toOpposite](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/monoidhom-toopposite.md) | 82 | `declaration-track:9fa4b48fbd5d25964103b116758221ff3bcbe39879b68c83d168869b84d872f2` |
| 9 | `def` | [MonoidHom.fromOpposite](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/monoidhom-fromopposite.md) | 93 | `declaration-track:fd74e421d898d4934278918d077aef3e409b827fd6538367b4d4e67f38473a8c` |
| 10 | `def` | [MulHom.op](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulhom-op.md) | 105 | `declaration-track:803b5b63d5034b6f2a3bd77746dabc1d1e35f5210b07bb234312545dbbe0cddc` |
| 11 | `def` | [MulHom.unop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulhom-unop.md) | 118 | `declaration-track:a1e03f2efaf129b1245707409386c091d5135cb066295f57aed4dbcf4ae9e834` |
| 12 | `def` | [AddHom.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addhom-mulop.md) | 125 | `declaration-track:eef6ecb248be7bd06404b2c78f10b703c39db6dbb58e81ae4591d25d308bedff` |
| 13 | `def` | [AddHom.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addhom-mulunop.md) | 139 | `declaration-track:37df493e2e39a6fdc9d42eb0518b5cd5b9440d8f6523f19e623ec2115542aa04` |
| 14 | `def` | [MonoidHom.op](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/monoidhom-op.md) | 148 | `declaration-track:987596fef74f5c01a52963c878d99d579026b3c7fba43a11889e294be7a5ff7e` |
| 15 | `def` | [MonoidHom.unop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/monoidhom-unop.md) | 161 | `declaration-track:cb13f94bae56d3fd383546a07f5ce8e6dea130ab98887ca71cb105c0099abbfa` |
| 16 | `def` | [MulEquiv.opOp](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulequiv-opop.md) | 167 | `declaration-track:40274b2429c167ebfc2bf37f81a1323d6c14f82528f6c8323cbc67674f86dfa3` |
| 17 | `def` | [AddMonoidHom.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addmonoidhom-mulop.md) | 174 | `declaration-track:72895853035378767fb9932c2c3198acb8b0ccf4f50753c5a2feb2e09396edfc` |
| 18 | `def` | [AddMonoidHom.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addmonoidhom-mulunop.md) | 189 | `declaration-track:0822543199cf93b41df44ad87f58d3b5526c87a55ced931c140acd4e39f5f5a7` |
| 19 | `def` | [AddEquiv.mulOp](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addequiv-mulop.md) | 194 | `declaration-track:01e84a4d0e9dd5fb9b7a7e06affea48d7a0c8037d434a10cd3dc3aff4cc9e9a4` |
| 20 | `def` | [AddEquiv.mulUnop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addequiv-mulunop.md) | 202 | `declaration-track:1a591ebcf206d052565e82ee10a7123e2baacd3d22895bab8c7bd51f6197bdd1` |
| 21 | `def` | [MulEquiv.op](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulequiv-op.md) | 208 | `declaration-track:218a7b423d715a74dfa7a9ae165e0caea0e832edbc2ebec869913f99647a68c4` |
| 22 | `def` | [MulEquiv.unop](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/mulequiv-unop.md) | 225 | `declaration-track:22e70caf09d5f5bb9e5ab29e358c4f9e79487f7e235bd85d8ddfa32791f6eb01` |
| 23 | `lemma` | [AddMonoidHom.mul_op_ext](../../../../GroupTheoryAndGeneralizations/EquivOppositeNamespaced.lean/declarations/addmonoidhom-mul-op-ext.md) | 233 | `result-track:ff2131f2ce2fddf4583c36654dd68143d416525bff947900870b54269efd53ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=566c4a068d484878da7c31ab38c94ba8118089cb9832b1b70aff66d896c09d8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant725b1af5d0578824342a0ec461a848a3f221fda3cb0f15a6cc3db6781aa57d34.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variant725b1af5d0578824342a0ec461a848a3f221fda3cb0f15a6cc3db6781aa57d34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: External Rigidifier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b12f9a56cb5afe1079aa6f65033c34b6d675080",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b12f9a56cb5afe1079aa6f65033c34b6d675080`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.IntrinsicRepresentative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalRigidifierCert](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/externalrigidifiercert.md) | 28 | `declaration-track:62b2c51b33d48ddc34f3613a5281fc435caeef1ffb46e08b49d888ee83382431` |
| 2 | `def` | [labelValue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/labelvalue.md) | 66 | `declaration-track:efe69b6c606ebba08de521d2c9237bd2dfe6cd0aae58fab241bd00e07f427fd0` |
| 3 | `theorem` | [labelValue_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/labelvalue-spec.md) | 71 | `result-track:2f5f4736d95be0639d6d8b19420fba8bdd2a0a04ccc263e51a29afbba01139ce` |
| 4 | `theorem` | [labelValue_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/labelvalue-injective.md) | 77 | `result-track:92e47307fd76b411f40cef58c1977e68153229e8853fdda203ed78a59ce40c07` |
| 5 | `def` | [externalLabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/externallabel.md) | 90 | `declaration-track:408ba730daeb7b6829b7c978d27c106e51a29a62f02571aab08883b360521d71` |
| 6 | `theorem` | [externalLabel_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/externallabel-surjective.md) | 96 | `result-track:eb10edf22efb67de107d2bbc1a3bcabc4ee343c99e79f4351a3e5c160e65720f` |
| 7 | `def` | [externalLabelEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/externallabelequiv.md) | 112 | `declaration-track:1e813e45b8680d9b71c1a8ea8e2d0f0cea30a432bc00e5536b9ff37b355dc7bc` |
| 8 | `def` | [RigidifiedAut](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidifiedaut.md) | 122 | `declaration-track:303fd934d58af8d05b9755d3840d7fff0c72ce50a0884bff16d62f3d6eba0e11` |
| 9 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/instance.md) | 131 | `declaration-track:9df6d7fff1f5c276b5114585c6f4d840aa7d2cc3c221b1d3836d5a43fb62c7ad` |
| 10 | `theorem` | [fixesEveryElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/fixeseveryelement.md) | 136 | `result-track:c42e204347a3b06d9e8545fca2233b65f48634f2fd75384d8c1b8b97a525c790` |
| 11 | `theorem` | [rigidifiedAut_trivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidifiedaut-trivial.md) | 144 | `result-track:ccb32b9f9e56576ae34c62e260c69201fb77ac3701c054158a7dcd89f6a3979d` |
| 12 | `def` | [rigidifiedElementOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidifiedelementorbit.md) | 156 | `declaration-track:4fae4c33de1f9c7075c4853f9dbaa5ab022a80280ddd367333e2e25fd1c79248` |
| 13 | `theorem` | [rigidified_element_orbit_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidified-element-orbit-singleton.md) | 163 | `result-track:a293d893facce7938472f45d8ea698584f452bb324e0fe3a8253228ef9b6b60d` |
| 14 | `def` | [rigidifiedProjectionOrbit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidifiedprojectionorbit.md) | 179 | `declaration-track:13ab081ca8eccd34467bb97c67d7024cf9b116999a6e1e42985f56d1b63dc600` |
| 15 | `theorem` | [rigidified_projection_orbit_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ExternalRigidifierNamespaced.lean/declarations/rigidified-projection-orbit-singleton.md) | 187 | `result-track:2479d8532c74b0ddb822b033500418ff9eb97effeccded0825d912bcdde14d79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b539fdc0b2a35d13c7820bd7847e8e75a21b9bb816a92bbbb235b39fe6420b77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

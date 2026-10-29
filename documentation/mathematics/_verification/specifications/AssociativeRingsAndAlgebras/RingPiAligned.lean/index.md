# Verification target: Ring Pi Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f73f3067e3d3d07ee403439c0d146ab663c90241",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f73f3067e3d3d07ee403439c0d146ab663c90241`.

Source path: `GRWTSK/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/distrib.md) | 33 | `declaration-track:a3974f861dfc71684694aa081f008a3c9dea95513df5c1db379e3bf2042dfeef` |
| 2 | `instance` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/hasdistribneg.md) | 40 | `declaration-track:40f0237131ca78b907bd02307a7cfe01cd35df83fd6397c70071d60013deafdf` |
| 3 | `instance` | [nonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalnonassocsemiring.md) | 44 | `declaration-track:ae716dcddec84ceba57702fbecd5ce855558e96fef255f781a837e1f26d14ff0` |
| 4 | `instance` | [nonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalsemiring.md) | 49 | `declaration-track:c8de4ee6424a1579367c054480d2a55f935576792ec9325dd79a3952044b085a` |
| 5 | `instance` | [nonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonassocsemiring.md) | 53 | `declaration-track:fd6b6bfaee463d34577e97bd59e3dced005ffbb6ec3961d387ae011c7b44a935` |
| 6 | `instance` | [semiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/semiring.md) | 57 | `declaration-track:6df52d82854adaaf2b00a2f05f496e1b5d4036122cf6187b3a387d2c53e8c2a5` |
| 7 | `instance` | [nonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalcommsemiring.md) | 61 | `declaration-track:ff818e1c214c6634aa5a3a11b402f9f52de812e5b67cdb3f59101e4a491aabe5` |
| 8 | `instance` | [commSemiring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/commsemiring.md) | 66 | `declaration-track:ef8244d18af62b981294e721b573a4b6082ec97d0ff80cbf1f260a0875f81455` |
| 9 | `instance` | [nonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalnonassocring.md) | 70 | `declaration-track:06a32ea5e337aef5a8857a434aa8ccd1616d622d2c12a4689ad5f3dd7de25087` |
| 10 | `instance` | [nonUnitalRing](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalring.md) | 75 | `declaration-track:b70b3c5ae14baac31a872d4f28494d34bdfa06dead456b5e0e01486c89b097c6` |
| 11 | `instance` | [nonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonassocring.md) | 79 | `declaration-track:7486886ef686b4f5d85768da1d32cd34394de2b3d84edddf4dd2ad42c3271885` |
| 12 | `instance` | [ring](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/ring.md) | 83 | `declaration-track:aae38171a36f5111b6d051888314b84871bb26b62f1bba2fefcaf92487a94411` |
| 13 | `instance` | [nonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalcommring.md) | 87 | `declaration-track:44f50ac2058bbed0b7845f9e9ac641ec72852f888f0eb0ccd2e0e01a6908d8c0` |
| 14 | `instance` | [commRing](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/commring.md) | 91 | `declaration-track:57d3b7976717eea697268f86c52458e0f0ed69cf4ea0aa237827694533ad0357` |
| 15 | `def` | [nonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalringhom.md) | 99 | `declaration-track:3bbc029eb20e620860f9a2dcb35eba0186c7fca81dbfdb6bc86369eb5095f30f` |
| 16 | `theorem` | [nonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalringhom-injective.md) | 105 | `result-track:a9ecc42b6e0cb244767048d2a65d8ffdaec9f18b93353dc9cc9e4dc793ef8198` |
| 17 | `def` | [ringHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/ringhom.md) | 114 | `declaration-track:0ca3df288de8283079ac499dfc18b5212b1a6eb7f4da10b07897850871fabde8` |
| 18 | `theorem` | [ringHom_injective](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/ringhom-injective.md) | 121 | `result-track:e2910b8eac26473d0c92a96d1de8e51c80fd664ddec2c7d8b16a005a4fa1de3f` |
| 19 | `def` | [Pi.evalNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/pi-evalnonunitalringhom.md) | 138 | `declaration-track:9853384ee0d36e72033191b304cbddefaebc2739b1ee190e21129baca01fd500` |
| 20 | `def` | [Pi.constNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/pi-constnonunitalringhom.md) | 145 | `declaration-track:fdfe53881975d48e2f81b57c001b949de173a513229bb129a0a1ef23ddaa0e23` |
| 21 | `def` | [NonUnitalRingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/nonunitalringhom-compleft.md) | 152 | `declaration-track:697f30726ab0c8674573c9d257700a478be5d9fa4253bf693d4764cf7ab37a83` |
| 22 | `def` | [Pi.evalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/pi-evalringhom.md) | 168 | `declaration-track:b2e4e546f4375449d56ff4347fe6167afbf782ab76d083e5d58cb3ba29435ac7` |
| 23 | `def` | [Pi.constRingHom](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/pi-constringhom.md) | 175 | `declaration-track:78548479fddb580d1d008ce147c9df2a0e7d32e9be45d3aa86dbf9edf19a46dd` |
| 24 | `def` | [RingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPiAligned.lean/declarations/ringhom-compleft.md) | 183 | `declaration-track:a0ad8f82011810b13b181a070f7251fc7b0abd1e6020bd46279ca818654e6932` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca82de10e5f0712555555015b4e72b281a476a72d385d39ed23f33a43ad7d7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean","GRWTSK/_verification/specifications/Algebra/Pi/Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

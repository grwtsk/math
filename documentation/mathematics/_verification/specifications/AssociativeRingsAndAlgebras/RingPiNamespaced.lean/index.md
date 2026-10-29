# Verification target: Ring Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7620f429b92edaddfa6f4d4593f409b4557c5481",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7620f429b92edaddfa6f4d4593f409b4557c5481`.

Source path: `GRWTSK/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CompTypeclasses` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/distrib.md) | 38 | `declaration-track:56fd25de7265b0ed97a6bcc0b2e7bc806705fae96848f0610bb0bdedff27852a` |
| 2 | `instance` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/hasdistribneg.md) | 44 | `declaration-track:16f0b9437846d23084a691310bb91361995d2b40e9bfe1572123ef3950728fad` |
| 3 | `instance` | [addMonoidWithOne](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/addmonoidwithone.md) | 48 | `declaration-track:a1977fd8c49eaafa081b05ec5b8dac5b540339d642b3a6eae2b3a8d0e268f4a8` |
| 4 | `instance` | [addGroupWithOne](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/addgroupwithone.md) | 53 | `declaration-track:2070efc912a4ab0433bc6f08784827a9a3b5861f1cf459d364a8adea7c487fc8` |
| 5 | `instance` | [nonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalnonassocsemiring.md) | 60 | `declaration-track:611feb0bee1eaac57ed44c2c206ae7e006babdf66cf776fd0a36eae38842f4f5` |
| 6 | `instance` | [nonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalsemiring.md) | 64 | `declaration-track:7d087254ca75617e7183e5c42f239224c31150f1f61de2ab03c70dbb6f541ba7` |
| 7 | `instance` | [nonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonassocsemiring.md) | 67 | `declaration-track:877062047df8f72bbe85309e60787d2e85b8f54b0c42a9b5acb85ee706195731` |
| 8 | `instance` | [semiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/semiring.md) | 70 | `declaration-track:faab3c464e389d13355b396572157c6fd1b788485c66268511ffdca6acb8ed2d` |
| 9 | `instance` | [nonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalcommsemiring.md) | 73 | `declaration-track:6ae4ca97fea8c6177365e45cc7545c9d168c1f6febc0a20575ad1793895c8d46` |
| 10 | `instance` | [commSemiring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/commsemiring.md) | 77 | `declaration-track:e590cc7ac7024114f1849a6387a7ab9d6bc9d12463bb475adbf5e6d5c3d4a40e` |
| 11 | `instance` | [nonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalnonassocring.md) | 80 | `declaration-track:0d53a42627ff88a24b752ea348a7f11846499e9902a331002e71ffbafae0f8ff` |
| 12 | `instance` | [nonUnitalRing](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalring.md) | 84 | `declaration-track:b2cc360917ee1d410bebf45381b6979f17c7f02da0082ba2fba94e814dc8e008` |
| 13 | `instance` | [nonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonassocring.md) | 87 | `declaration-track:c518da272e3d96364af0d5bd5d5dc301413a6a985b16c15bd5f16a96e53240cd` |
| 14 | `instance` | [ring](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/ring.md) | 90 | `declaration-track:91a7ec73a74e348f3438a17a8f3beaa3c0f12beb4bb6d1596f68406eed040007` |
| 15 | `instance` | [nonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalcommring.md) | 93 | `declaration-track:5914cbdc5c8a55f7ef4c693074573cb2b2fb95679d875c520a5cf04f2b3073e2` |
| 16 | `instance` | [commRing](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/commring.md) | 96 | `declaration-track:5768bb6fe27b06eb6d1414dbe52d7c08493e2202d3481807bccbe00bc6927b95` |
| 17 | `def` | [nonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalringhom.md) | 103 | `declaration-track:d404509ac6e61ec903ba62984847c7b3743f9232cd719fba88c8f9cd1efcf631` |
| 18 | `theorem` | [nonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalringhom-injective.md) | 108 | `result-track:f4d75bbd0b59e0be53385743de56649bd9bbd4823fca933fb85e11eca7564a44` |
| 19 | `def` | [ringHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/ringhom.md) | 116 | `declaration-track:0cea2b9f694fbd06f5a58dca1a9949a95aa2603983b4036acbe4382b1f1b9f56` |
| 20 | `theorem` | [ringHom_injective](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/ringhom-injective.md) | 121 | `result-track:20cf1fafd69edfb058616f957d95a53ca8f6585967690412caad4d5556698373` |
| 21 | `def` | [Pi.evalNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/pi-evalnonunitalringhom.md) | 137 | `declaration-track:559026bc31331ad2ce5ac71496ae1fa5c0dd704459f13f6f436b396c743af7c7` |
| 22 | `def` | [Pi.constNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/pi-constnonunitalringhom.md) | 143 | `declaration-track:f9fafcffd3b02c9c42cc782637f923161581bc3b1465cc54cddfb7fee2dd02f8` |
| 23 | `def` | [NonUnitalRingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/nonunitalringhom-compleft.md) | 149 | `declaration-track:88de821debeb7dd218c60f19d866ae70ce2ec103386e26684ebfe620a823c4f2` |
| 24 | `def` | [Pi.evalRingHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/pi-evalringhom.md) | 164 | `declaration-track:bed0306b8c77849c5c163cadce7e05e17a70a8b6e6d32ee2b8ddebd06b0f8d57` |
| 25 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/instance.md) | 167 | `declaration-track:b1c93b2aa88f211d3864288f8d49d858d3f3529c7f02eff5eb9d59b262094427` |
| 26 | `def` | [Pi.constRingHom](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/pi-constringhom.md) | 173 | `declaration-track:d7ac0e91283d2ecdb8de2693f8c8055fb1fe9eac5eff508960048f0c120b178d` |
| 27 | `def` | [RingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPiNamespaced.lean/declarations/ringhom-compleft.md) | 179 | `declaration-track:4eca07a946445e4b88337e991ca770ed9125ea4b4fa098ca4ba9f6b3493ae6c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1467b8b279e4206a4ef8aa2775e93f4f44ba93c1adbdb2d03ee0bc476de868f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean","GRWTSK/_verification/specifications/Algebra/Pi/Variant9b7015cb9f1242fdc6bc09e49d6d95f1d198914d2d1170c2d207f6df4533845c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

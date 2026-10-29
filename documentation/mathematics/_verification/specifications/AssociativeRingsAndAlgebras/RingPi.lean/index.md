# Verification target: Ring Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c20d456a41b70cdde30aa4cb2407896eb15fcce",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variant61959688998d3270287a6e883efad87197c588aede1b2109a35bebbccc305aaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingPi.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c20d456a41b70cdde30aa4cb2407896eb15fcce`.

Source path: `GRWTSK/Algebra/Pi/Variant61959688998d3270287a6e883efad87197c588aede1b2109a35bebbccc305aaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variant61959688998d3270287a6e883efad87197c588aede1b2109a35bebbccc305aaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CompTypeclasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distrib](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/distrib.md) | 30 | `declaration-track:efc7f4a9a63166ada44c16169aa315960e1e69ae09ceb50263456575ee919e2b` |
| 2 | `instance` | [hasDistribNeg](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/hasdistribneg.md) | 36 | `declaration-track:ef7f7fd253c0969339b500c9baeff0f6c0d7b1a01e3b68d360b8df328892a26f` |
| 3 | `instance` | [addMonoidWithOne](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/addmonoidwithone.md) | 40 | `declaration-track:8559cf84372c4a53775580dcec708db0c30524b7ac19655f5a862a550bded899` |
| 4 | `instance` | [addGroupWithOne](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/addgroupwithone.md) | 45 | `declaration-track:7a6230e180960020901d2c175dd799dd3f39f6d2744748676faf17963928cde2` |
| 5 | `instance` | [nonUnitalNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalnonassocsemiring.md) | 52 | `declaration-track:44a37da3cb9eebcdfd4789682b956d86617d07a598783e73c23f1e4a8ee29121` |
| 6 | `instance` | [nonUnitalSemiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalsemiring.md) | 56 | `declaration-track:75f30865c4b39ba544af8711f38eded7643fc546f8fe152906cc403594fda2e3` |
| 7 | `instance` | [nonAssocSemiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonassocsemiring.md) | 59 | `declaration-track:3e44c9fc77ec3be9ca7055ad7234d179026310bcfc45ec001a08d9ba6f875a74` |
| 8 | `instance` | [semiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/semiring.md) | 62 | `declaration-track:15fca3dc3025ab56d7df16f56c951464a14e761a872ac345f7b4a96202388398` |
| 9 | `instance` | [nonUnitalCommSemiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalcommsemiring.md) | 65 | `declaration-track:dd1d1e176567914c3bdca0de8e58c6a069282bf02a809a51134fb35976ebdad7` |
| 10 | `instance` | [commSemiring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/commsemiring.md) | 69 | `declaration-track:6140c128a5c8d5ef36731c0ef72504920081034400b592b10cf7ec4ac8052d33` |
| 11 | `instance` | [nonUnitalNonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalnonassocring.md) | 72 | `declaration-track:3ef6ffffb04a5b7897834c664f33bc49c1564d5d0f14788149eb5217982e1f0d` |
| 12 | `instance` | [nonUnitalRing](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalring.md) | 76 | `declaration-track:68a51b4b1b2e3a096ccecc3a585454476f5985dc782b273daaa4a566ee10ce59` |
| 13 | `instance` | [nonAssocRing](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonassocring.md) | 79 | `declaration-track:c382836561b272a0f67fa0f1d60802dcac9d3fd4762ff14e7f2ec19aeea022dd` |
| 14 | `instance` | [ring](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/ring.md) | 82 | `declaration-track:333c79e734df72b13fb95596523f2787b603437c9a0631b92040e194754e5f2a` |
| 15 | `instance` | [nonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalcommring.md) | 85 | `declaration-track:12a810f9b51420eafaf6cdd78babf72992d5f8fcc63d3c5faaff09a48ed70bf0` |
| 16 | `instance` | [commRing](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/commring.md) | 88 | `declaration-track:619ec45dd608b17df1244d22232c9dd609cd5e2d8214d5bf6a83c6110c90cf29` |
| 17 | `def` | [nonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalringhom.md) | 95 | `declaration-track:fb90fd5fc46dc2b2cf75b56f72cc6bef19cf4d4a9986392bddc81bb2c1052535` |
| 18 | `theorem` | [nonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalringhom-injective.md) | 100 | `result-track:6d7ed120486f57302d23663cfdc48c4363f831e7891fee235024a1ccfd212038` |
| 19 | `def` | [ringHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/ringhom.md) | 108 | `declaration-track:15ed30f4a579b98489b633a35a5b37fe400807a5cc762918b769484e7cac8ccc` |
| 20 | `theorem` | [ringHom_injective](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/ringhom-injective.md) | 113 | `result-track:23c7a1f318df91565b5e5de8bf3c6cb3d2e015467f510f98bd445cca99dfe834` |
| 21 | `def` | [Pi.evalNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/pi-evalnonunitalringhom.md) | 129 | `declaration-track:121ff5392caf387029b728a066493a3a0c43cc798c0df7463fa9a08efdd872ac` |
| 22 | `def` | [Pi.constNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/pi-constnonunitalringhom.md) | 135 | `declaration-track:1cf74f9b36176901ee9cccc08529813822efb8f4b1baa747d3d281690fd10370` |
| 23 | `def` | [NonUnitalRingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/nonunitalringhom-compleft.md) | 141 | `declaration-track:c199b4caffb149cc9068371bfbbfc96c471258fc4547919cab208043f5567141` |
| 24 | `def` | [Pi.evalRingHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/pi-evalringhom.md) | 156 | `declaration-track:ce35290f821991d70e611886141ca4f83bbfae9230173a31f5fe365dda6bb286` |
| 25 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/instance.md) | 159 | `declaration-track:6e433231b97fb271c78b6b1c501a1e5ab45a1163fa5b26e60cd5b9c4142f31ff` |
| 26 | `def` | [Pi.constRingHom](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/pi-constringhom.md) | 165 | `declaration-track:a8ed91f238206decfcc7028d554ca555ee112c7623d237477ae8cd77995f5985` |
| 27 | `def` | [RingHom.compLeft](../../../../AssociativeRingsAndAlgebras/RingPi.lean/declarations/ringhom-compleft.md) | 171 | `declaration-track:087f2af2c118dd51e4bca35a8aa07d173a626d80d2b71882f24d6ad28e11b16f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=977de9e1b3085447e5794468bf272b36d7bc1464e163ec3f1212d8b31694f1f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pi/Variant61959688998d3270287a6e883efad87197c588aede1b2109a35bebbccc305aaa.lean","GRWTSK/_verification/specifications/Algebra/Pi/Variant61959688998d3270287a6e883efad87197c588aede1b2109a35bebbccc305aaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

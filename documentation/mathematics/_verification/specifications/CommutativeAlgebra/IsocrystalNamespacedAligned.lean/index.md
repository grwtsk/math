# Verification target: Isocrystal Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655b7e16952e77ca869b62612543d0984fa2bc9b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655b7e16952e77ca869b62612543d0984fa2bc9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.FrobeniusFractionField` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FractionRing.frobenius](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/fractionring-frobenius.md) | 88 | `declaration-track:b3cfbb1d2f15becee32a19d258f73d0bf5216f43215fa4ce20a37f7e72633475` |
| 2 | `def` | [FractionRing.frobeniusRingHom](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/fractionring-frobeniusringhom.md) | 93 | `declaration-track:fc98b1fb6a3c04a78cbe5d7ce0064ed8920ec6e7a4fa69aef940d5dbca3c5270` |
| 3 | `instance` | [inv_pair₁](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/inv-pair.md) | 99 | `declaration-track:bc02fbc9f2dd8f058d4dccf348ee174d72e4e277e3c6b3a5f9423d7fc334b225` |
| 4 | `instance` | [inv_pair₂](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/inv-pair-source-edition-2.md) | 103 | `declaration-track:f124f77afa50ba5ad1dd3f645807c984ebd4c6f9f325eaf2e9b222572c9d7784` |
| 5 | `class` | [Isocrystal](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/isocrystal.md) | 122 | `declaration-track:221aeaf831018d2633e2f6931b2ec9c186331e04d82d6e1d12116d32a655090a` |
| 6 | `def` | [Isocrystal.frobenius](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/isocrystal-frobenius.md) | 137 | `declaration-track:c5d0e7dfc9b2ee7e54fd4705ae8e71bf4fb1f734802ffbc60699e53aec864d60` |
| 7 | `structure` | [IsocrystalHom](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/isocrystalhom.md) | 148 | `declaration-track:8e693ac272293592b60840aba3ac8190125cd46423ab46424fef0407e4e70fe4` |
| 8 | `structure` | [IsocrystalEquiv](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/isocrystalequiv.md) | 155 | `declaration-track:3049799fbf0643eda981a8b52c527f7b628eaed2b214c277e12c272a79523f2a` |
| 9 | `def` | [FractionRing.module](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/fractionring-module.md) | 172 | `declaration-track:8fd9918bc590b388943fa1874559c8781dcb694f0d9bd8e48c53f1b4362dd20c` |
| 10 | `def` | [StandardOneDimIsocrystal](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/standardonedimisocrystal.md) | 182 | `declaration-track:ab7146ebd14ac97942461af90c46fa7d6066e8ed97232e12e50832074c668c87` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/instance.md) | 189 | `declaration-track:c3e45236e5e8748eeae0c9375f2f5cdd09002a4edb5f7105b49a22c4402b5458` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:ea463dc5810f090a58eb857a3d802bbe073ccd18ce35caf3cddde5c0ad99e8a6` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:de6285074db454143c73b5ac4992eee991182a39179d614dbe2822320bcd434f` |
| 14 | `theorem` | [StandardOneDimIsocrystal.frobenius_apply](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/standardonedimisocrystal-frobenius-apply.md) | 207 | `result-track:f143543266f68e52844ad99b45f38b8c66263c6a074188ae335e83c68f5e4060` |
| 15 | `theorem` | [isocrystal_classification](../../../../CommutativeAlgebra/IsocrystalNamespacedAligned.lean/declarations/isocrystal-classification.md) | 219 | `result-track:ae8d8ddac4496032a73a514cf4e86e5816a606cb62d9c6032c424ba4160af38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cb8572f9d3a3d6243aff1862a17d0cb41b556677743c9dfac7da6da90906474 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Isocrystal/Variant5bfc8d8cd720dbd528645d74325c78a7022e54faf7d22e7e1336c39c48439f11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

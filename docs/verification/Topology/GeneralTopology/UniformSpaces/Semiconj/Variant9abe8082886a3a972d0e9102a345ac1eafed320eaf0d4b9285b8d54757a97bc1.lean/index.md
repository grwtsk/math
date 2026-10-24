# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Semiconj.Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ef94afa7d2deb8a6ae9e02e1649663605718462",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ef94afa7d2deb8a6ae9e02e1649663605718462`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.CoverEntropy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsDynCoverOf.image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/isdyncoverof-image--1117d32f85dfe9cac7306c6c.md) | 60 | `result-track:1117d32f85dfe9cac7306c6cabd79c883102f8de44880760ac65cc47c0c3facf` |
| 2 | `lemma` | [IsDynCoverOf.preimage](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/isdyncoverof-preimage--8abe9cc98d53a085c8248043.md) | 67 | `result-track:8abe9cc98d53a085c82480436052ded820180fe94fbf6998bbedc16f3d25b7ec` |
| 3 | `lemma` | [le_coverMincard_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/le-covermincard-image--66f1cef77eaba4d5b0b538f2.md) | 91 | `result-track:66f1cef77eaba4d5b0b538f2dce2d5c47a288696b32cdc35435f33420a41e3d6` |
| 4 | `lemma` | [coverMincard_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/covermincard-image-le--a86cb4e256f770506e1752dd.md) | 101 | `result-track:a86cb4e256f770506e1752ddbfaec98b6a51c3716aebf8ef80590d11bd7e3305` |
| 5 | `lemma` | [le_coverEntropyEntourage_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/le-coverentropyentourage-image--0a1567aa0d60357de1e57de1.md) | 114 | `result-track:0a1567aa0d60357de1e57de1d2b4ecdfceb5bcc24d8d3dca117440a0ce8c0110` |
| 6 | `lemma` | [le_coverEntropyInfEntourage_image](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/le-coverentropyinfentourage-image--0743e8d6befa181cfeebd7f5.md) | 119 | `result-track:0743e8d6befa181cfeebd7f5b7ae5d41adcb408d5d0ea0c804d4097d4f27b42b` |
| 7 | `lemma` | [coverEntropyEntourage_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyentourage-image-le--fc8b166aab20cb8cb686c645.md) | 124 | `result-track:fc8b166aab20cb8cb686c6458243a96507a6a17c7e64dc8f4dd497cfdfe76c0e` |
| 8 | `lemma` | [coverEntropyInfEntourage_image_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyinfentourage-image-le--9745e5335320a5bce5ba3e62.md) | 128 | `result-track:9745e5335320a5bce5ba3e62c4f17f9ebe313376751046c57d192e059832501c` |
| 9 | `theorem` | [coverEntropy_image_of_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropy-image-of-comap--d29148e24e8bf5211111b3c3.md) | 134 | `result-track:d29148e24e8bf5211111b3c3fe06d65e67b2eef0bdc3c9a063d800c3254e4528` |
| 10 | `theorem` | [coverEntropyInf_image_of_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyinf-image-of-comap--d8b20a2d219e3f6c65525882.md) | 152 | `result-track:d8b20a2d219e3f6c655258825e7b715fe63e16a48b8825007f387367df0bcebe` |
| 11 | `lemma` | [coverEntropy_restrict_subset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropy-restrict-subset--3b8749be90d1b59a7bdaeed5.md) | 170 | `result-track:3b8749be90d1b59a7bdaeed57a8340c43812cf99f000a41550912034f6249b6e` |
| 12 | `lemma` | [coverEntropyInf_restrict_subset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyinf-restrict-subset--35addd2456eb423c9fbac515.md) | 176 | `result-track:35addd2456eb423c9fbac515f7227b6119cfdc68a295abc831321e56654e2fc9` |
| 13 | `theorem` | [coverEntropy_restrict](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropy-restrict--e59a882d839dfef5983a2fdc.md) | 184 | `result-track:e59a882d839dfef5983a2fdc7d7c83c4ae34d7067988ca380efb0bddc5c781db` |
| 14 | `theorem` | [coverEntropy_image_le_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropy-image-le-of-uniformcontinuous--1f79d44b8e6a9c3eaa16ce9f.md) | 189 | `result-track:1f79d44b8e6a9c3eaa16ce9fe73a5fb433230b22acb07ab801050ae10039edb5` |
| 15 | `theorem` | [coverEntropyInf_image_le_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyinf-image-le-of-uniformcontinuous--f73cefece4ac5d5020f086f8.md) | 197 | `result-track:f73cefece4ac5d5020f086f86217343af6c011ec7545858a93df7f743684f208` |
| 16 | `lemma` | [coverEntropy_image_le_of_uniformContinuousOn_invariant](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropy-image-le-of-uniformcontinuouson-invariant--e9e5e7973e5b3f12f8bf4738.md) | 203 | `result-track:e9e5e7973e5b3f12f8bf47384bffbcc90ce72cdb9c2e9ad0be5d98a50f25fcfc` |
| 17 | `lemma` | [coverEntropyInf_image_le_of_uniformContinuousOn_invariant](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Semiconj/Variant9abe8082886a3a972d0e9102a345ac1eafed320eaf0d4b9285b8d54757a97bc1.lean/declarations/coverentropyinf-image-le-of-uniformcontinuouson-invariant--de69cd69d083a1b30877d0bd.md) | 215 | `result-track:de69cd69d083a1b30877d0bd0ea090c11013e8ab54f1ca9b400d3f4629788a84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

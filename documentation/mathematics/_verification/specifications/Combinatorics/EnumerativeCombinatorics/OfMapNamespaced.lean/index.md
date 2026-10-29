# Verification target: Of Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04f6add0a354c77882ffab2fb45b3549f31afbe0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OfMap/Variant8f0b9885ce38bd974f4706b2dca885f188616201661f061a1874edf234ba76d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04f6add0a354c77882ffab2fb45b3549f31afbe0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OfMap/Variant8f0b9885ce38bd974f4706b2dca885f188616201661f061a1874edf234ba76d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OfMap/Variant8f0b9885ce38bd974f4706b2dca885f188616201661f061a1874edf234ba76d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Image` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMultiset](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofmultiset.md) | 44 | `declaration-track:76052c54e6fb8aa56c5949619d2408e6c46a8e36ea27fe2a1cd455c6326ba25a` |
| 2 | `def` | [ofList](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/oflist.md) | 48 | `declaration-track:01fa1f5dbfb6e3de361ca6e37c7ee41def8040dc783c249ef56884f5f583de91` |
| 3 | `def` | [ofBijective](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofbijective.md) | 52 | `declaration-track:7f0208990a0e3a8e72f0fe10b6aca03ea906363b88cdb72d15ae1dd434469000` |
| 4 | `def` | [ofSurjective](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofsurjective.md) | 58 | `declaration-track:8ddd73dcd7fadafb81822664c27eabfd3864615993e137afeadcdbc8dff0bd22` |
| 5 | `def` | [ofInjective](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofinjective.md) | 66 | `declaration-track:6b4de1ae67ba53a857ae0aea2c2b128bceaebc18556c316fb2ff027ff3549165` |
| 6 | `def` | [ofEquiv](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofequiv.md) | 74 | `declaration-track:3d2f578111eaa2242aabb6136d1f9b0a7350a1fdbb8debcd59b15900d5963be6` |
| 7 | `def` | [ofSubsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofsubsingleton.md) | 78 | `declaration-track:16a3b9810e32734d841f41790c77dd6676f03e2b69545bda19f10da114fa17dc` |
| 8 | `theorem` | [univ_ofSubsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/univ-ofsubsingleton.md) | 83 | `result-track:00e5694932d6339d38d4e65a1404f982754a658249da52249cea65d1f94a3a55` |
| 9 | `def` | [ofIsEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/ofisempty.md) | 88 | `declaration-track:94c95c2251d5b51005ce30902b006952abaee5377c430ceabcfffc8ac00395b9` |
| 10 | `theorem` | [univ_ofIsEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/univ-ofisempty.md) | 93 | `result-track:78342077f61bd053a3c2187e997940ecbddec24fc2575519391f261d8c719cf3` |
| 11 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/instance.md) | 96 | `declaration-track:4085104376a7940e4f7a69bcaa93086bcebad021166379ab499767302a7d5af0` |
| 12 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/OfMapNamespaced.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:63b8a3bfb2434331719ddf5e1f0f8f6cc296b8845e571cb18b09108c32b69796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b67294fbdb082ee7e2f00989b657abb742ab5d9b3913eafa9ac4fa3c94b9ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OfMap/Variant8f0b9885ce38bd974f4706b2dca885f188616201661f061a1874edf234ba76d4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OfMap/Variant8f0b9885ce38bd974f4706b2dca885f188616201661f061a1874edf234ba76d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

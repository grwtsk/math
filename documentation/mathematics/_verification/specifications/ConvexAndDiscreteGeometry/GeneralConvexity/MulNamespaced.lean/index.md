# Verification target: Mul Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96fb5156858fa97e75178b356eb8d2beed8801f5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96fb5156858fa97e75178b356eb8d2beed8801f5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monovary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ConvexOn.smul'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-smul.md) | 41 | `result-track:555064e5609a063d88d20005099f035602ddcc6ad2301df405d4e50989a203ef` |
| 2 | `lemma` | [ConcaveOn.smul'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-smul.md) | 60 | `result-track:9a00a58de66e9cd251ebe7cc768dd7ee68023f73364985c076e7cec5d92567ba` |
| 3 | `lemma` | [ConvexOn.smul''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-smul-source-edition-2.md) | 80 | `result-track:e47c11dd65c61eaf937749130f7ca248c7f0d465d2858020c316d9280b1b87cf` |
| 4 | `lemma` | [ConcaveOn.smul''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-smul-source-edition-2.md) | 87 | `result-track:eee0835bd7e73760e82f13eb312ca2464070de449a6905ab38e57cd82a419c1f` |
| 5 | `lemma` | [ConvexOn.smul_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-smul-concaveon-source-edition-2.md) | 93 | `result-track:6efa6f72565ba05b22a145683fead340bd7020f935b01e58f09fd1db8eaf1a24` |
| 6 | `lemma` | [ConcaveOn.smul_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-smul-convexon-source-edition-2.md) | 99 | `result-track:28e2fabe983d67c6cf9ca8f9589d04da5eb5f2a066926dd3b6a1d975ec277c3b` |
| 7 | `lemma` | [ConvexOn.smul_concaveOn'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-smul-concaveon.md) | 105 | `result-track:6c102b6b3730e4716aff5ef2206daa1f9c0bcc24c61096a9634399800438c931` |
| 8 | `lemma` | [ConcaveOn.smul_convexOn'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-smul-convexon.md) | 111 | `result-track:157d762c73ae5596d5afa59074d602d562a9e79150e09f8fa6823a7360398760` |
| 9 | `lemma` | [ConvexOn.mul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-mul.md) | 119 | `result-track:189d39c7c6c1f982d3660764550cff111c66c04aca21c4b16bffd9dfb43d043b` |
| 10 | `lemma` | [ConcaveOn.mul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-mul-source-edition-2.md) | 123 | `result-track:fc29c14c32f9b7127a835c908277f91350dff95c9c7b812fcb30fb048878fbd9` |
| 11 | `lemma` | [ConvexOn.mul'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-mul-source-edition-2.md) | 127 | `result-track:59df35f1a3beb7545ac5751ca641845d3a53e2666b138fc5d3f8a1f9824a9176` |
| 12 | `lemma` | [ConcaveOn.mul'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-mul.md) | 131 | `result-track:6ac926489281983e1e2059600c6baffdc96da348d20d01e5b0f65dcbcd5c8eda` |
| 13 | `lemma` | [ConvexOn.mul_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-mul-concaveon.md) | 135 | `result-track:6c0d62d4f631ef3c19c5f80cb5c2333ef0d097d68169e13033bd7d969b1c3ce4` |
| 14 | `lemma` | [ConcaveOn.mul_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-mul-convexon.md) | 139 | `result-track:5612b2930cb61628adb27b52e9a0a2b853b81a24153ad02fd8d2e037af723913` |
| 15 | `lemma` | [ConvexOn.mul_concaveOn'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-mul-concaveon-source-edition-2.md) | 143 | `result-track:d6466723d4c35a6e149c109e00374c3182797c53087b78b1fc2d5d030bdb0675` |
| 16 | `lemma` | [ConcaveOn.mul_convexOn'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/concaveon-mul-convexon-source-edition-2.md) | 147 | `result-track:fe1230407c23fb23c7335af7adc2d49a347162b5ccdb49e5e87dff1130c9c667` |
| 17 | `lemma` | [ConvexOn.pow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-pow-source-edition-2.md) | 151 | `result-track:aa830b8a35f4bb223408e1906936790c0faedd76a5ad0b65f4646028dd6fe1be` |
| 18 | `lemma` | [convexOn_pow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-pow.md) | 160 | `result-track:9a85bbe3ace7754fadc4da73b37c318fc6f219c607b45b0c012aa25e5c271005` |
| 19 | `lemma` | [Even.convexOn_pow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/even-convexon-pow.md) | 164 | `result-track:5f832c0ead850578866990a2d03ced6a80db7e4eb4c5c638c5ea4003506e635f` |
| 20 | `lemma` | [convexOn_zpow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/MulNamespaced.lean/declarations/convexon-zpow.md) | 180 | `result-track:b5e6a977ebf4ae7abf454e713aea1df0b6aa336fb553b46662c5079731be78aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4511c1428c3ab6d5d89c7fbdb64c1dd98c931dc01e1754852c04903337899ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Mul/Variant3bae735d19605a943e107b6bd5846468d5c5fe8fc8c0d650737ed571a610403d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

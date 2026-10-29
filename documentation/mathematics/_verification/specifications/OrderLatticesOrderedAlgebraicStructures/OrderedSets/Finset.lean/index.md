# Verification target: Finset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4bd982c8df15596176a007dd46ba48da568d22d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4bd982c8df15596176a007dd46ba48da568d22d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Tuple` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Insert` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderIsoSingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisosingleton.md) | 30 | `declaration-track:031fefb3bc01520bddbede1136a95aaeac38b57dc233495e1beee28746e75d5e` |
| 2 | `lemma` | [orderIsoSingleton_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisosingleton-apply.md) | 35 | `result-track:0463fa1be0800df816457ab14d14aad4dd5d86b1660924f02285e5c935633f16` |
| 3 | `def` | [orderIsoPair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisopair.md) | 45 | `declaration-track:61bfce436e12c2fea11a00a90d786086125ab59723c8a68abc94d021ded6c144` |
| 4 | `lemma` | [orderIsoPair_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisopair-zero.md) | 54 | `result-track:9d0f7d0eea42e70e34903547cd3f53ae7989016e474be3b6981d61d67556e75c` |
| 5 | `lemma` | [orderIsoPair_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisopair-one.md) | 55 | `result-track:162a2db61d45884b3aed13d1e986d16d07d68c1d280b505eabbc320e4f22eb09` |
| 6 | `def` | [orderIsoTriple](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisotriple.md) | 65 | `declaration-track:d9ff814366e3b87becab62dfd467225cae11e9362be596e979759eb633f607ae` |
| 7 | `lemma` | [orderIsoTriple_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisotriple-zero.md) | 75 | `result-track:832b440f3e42f8db306eed3753d0040d422d9a90a45957ac03ab94d298c17e2e` |
| 8 | `lemma` | [orderIsoTriple_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisotriple-one.md) | 76 | `result-track:69e097515e128761456665a399e19cc20ba051501387e40f9e33baa246a76b37` |
| 9 | `lemma` | [orderIsoTriple_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Finset.lean/declarations/orderisotriple-two.md) | 77 | `result-track:0a5a3cdceb59a5745d48277ee6d27f93bee775446d7ca6b2865bd477b422353f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dda3fedd59d63725e7af014f2ff3b0503f6ef80997a786b9f66ed24e6bf3637b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finset/Variante236aa8c3ed3806f4f2798042c6f4938fbedff04422758409e878e9d098c7ac4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Dom Mul Act Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0504b1aad26c0c9e8b58288cb39f2588428eecf2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0504b1aad26c0c9e8b58288cb39f2588428eecf2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_stabilizer_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/mem-stabilizer-iff.md) | 51 | `result-track:d4c1e6fb4be73a8df05a22ccf37691b84a4e151ae9c7dbedb2b9d079b021f2f0` |
| 2 | `def` | [stabilizerEquiv_invFun](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizerequiv-invfun.md) | 57 | `declaration-track:7320129dce95fe84b65141c2867a78566771c08d053964cb5495bebfc0321f0a` |
| 3 | `lemma` | [stabilizerEquiv_invFun_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizerequiv-invfun-eq.md) | 59 | `result-track:5ee24563e3846f05057b124db38d1fb60444eab8fbe0d5a7eaf32fd9f3e9f345` |
| 4 | `lemma` | [comp_stabilizerEquiv_invFun](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/comp-stabilizerequiv-invfun.md) | 62 | `result-track:a339da365968a6829d711058de2ded6edb2008a722c49c530388bdf04655dda3` |
| 5 | `def` | [stabilizerEquiv_invFun_aux](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizerequiv-invfun-aux.md) | 68 | `declaration-track:52ef421d2736b4adebfa7cc67bbd8c42e3eddb266dd313904aedd69bbd7f8e09` |
| 6 | `def` | [stabilizerMulEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizermulequiv.md) | 81 | `declaration-track:7a168482fa26f601e963857025011ae564e4d1f53049b4717bd5e4c571e84dcb` |
| 7 | `lemma` | [stabilizerMulEquiv_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizermulequiv-apply.md) | 92 | `result-track:2fa8750c055dba88f8fe5b021c371ed892a1b02c06916f5fc3389d466f0bce64` |
| 8 | `theorem` | [stabilizer_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizer-card.md) | 104 | `result-track:bd403736b086c3e6d275c6679b697dd734c494f10a93ab002a001040c3e58bec` |
| 9 | `theorem` | [stabilizer_ncard](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizer-ncard.md) | 116 | `result-track:7d094a347332e0d8a5196e3dcacebad72bda084ca93a8fa21f7864373e2fbf34` |
| 10 | `theorem` | [stabilizer_card'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/DomMulActNamespaced.lean/declarations/stabilizer-card-source-edition-2.md) | 127 | `result-track:e9728e6816c6a5ebbc16a7d109496d6d578589ffaf129c11660709cc3ba6978e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e72ddd711f33e6f0a97f583b224028d23962914835c7de734baeb16f36c7a17e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant36ef307d3360dda65aa2a2bf9ba4bd7bda32184686c278caaeb13ab027780dfd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Minimal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38d82850b76f2d79fe77e15be44e3e0b694c1c63",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38d82850b76f2d79fe77e15be44e3e0b694c1c63`.

Source path: `GRWTSK/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.ConstMulAction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddAction.IsMinimal](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/addaction-isminimal.md) | 37 | `declaration-track:f0c76ad781cba2bfd9fd1fd09f2b69ed2634509db6ce79b2cd8826783c3b4d0e` |
| 2 | `class` | [MulAction.IsMinimal](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/mulaction-isminimal.md) | 44 | `declaration-track:cc99b7641b3e2e07ca15cb0493970088855f1816008a04798ce9ef0848d95388` |
| 3 | `theorem` | [MulAction.dense_orbit](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/mulaction-dense-orbit.md) | 54 | `result-track:7cb79f12ebdfc5e16359add8867980d1f538d1ba76e48518e9ca1b6f27b97f8a` |
| 4 | `theorem` | [denseRange_smul](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/denserange-smul.md) | 58 | `result-track:8c53ef61097533bac6c7ee1dc5994555b758b7b0780da4f431691dcf8bbb0c0d` |
| 5 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/instance.md) | 62 | `declaration-track:5a0b096be4d619c113aebc720743bd2f9744dc82936e695d3c62b07ed28877d7` |
| 6 | `theorem` | [IsOpen.exists_smul_mem](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/isopen-exists-smul-mem.md) | 67 | `result-track:0977e4b7ba49903e25f8e6e2f588cffff992634129a66fb3ce854b76f06788a9` |
| 7 | `theorem` | [IsOpen.iUnion_preimage_smul](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/isopen-iunion-preimage-smul.md) | 72 | `result-track:5b90c5556d8caae9c084a58d81601b92c68252351942b10ac4d26b92158b971b` |
| 8 | `theorem` | [IsOpen.iUnion_smul](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/isopen-iunion-smul.md) | 77 | `result-track:76edf60066de5efab14419ee610163d1f7c32d37d26d2f3aed2eec99d50e3698` |
| 9 | `theorem` | [IsCompact.exists_finite_cover_smul](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/iscompact-exists-finite-cover-smul.md) | 84 | `result-track:5bfc1b66160475a40d573713ca3e442664805b45876c1ec99afaa04f0b687827` |
| 10 | `theorem` | [dense_of_nonempty_smul_invariant](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/dense-of-nonempty-smul-invariant.md) | 92 | `result-track:051a6af4ae0ba2ccf57455248ef486f55efaf904c007f8e1d5c32d2a306c60e1` |
| 11 | `theorem` | [eq_empty_or_univ_of_smul_invariant_closed](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/eq-empty-or-univ-of-smul-invariant-closed.md) | 98 | `result-track:182a8a3591e77365da9e3d7efecbe2aa85962b6b73f1f121ebd97c39c893498d` |
| 12 | `theorem` | [isMinimal_iff_isClosed_smul_invariant](../../../../DynamicalSystemsAndErgodicTheory/MinimalNamespaced.lean/declarations/isminimal-iff-isclosed-smul-invariant.md) | 104 | `result-track:96822dfb3b6c942d9c5490facb02f09960236c34dd74cc72b273e190bc284853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1954765da88fc821ce59d67bf53c09c77c6391dc9d8f5780eedd38ff4db01960 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

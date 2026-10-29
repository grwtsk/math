# Verification target: Group Multiset Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5123f7842e1df03c5f7587bdaa1a4b2eca9075b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2f9567cfce78125c2d5ca86be8fd83e2d557cd80e284325feab773b64adcd84c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5123f7842e1df03c5f7587bdaa1a4b2eca9075b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2f9567cfce78125c2d5ca86be8fd83e2d557cd80e284325feab773b64adcd84c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant2f9567cfce78125c2d5ca86be8fd83e2d557cd80e284325feab773b64adcd84c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod.md) | 47 | `declaration-track:c81e25ec3ddc291114b8f4d692c95338a4f6761ccf4996f9dc153abfdfcd78bd` |
| 2 | `theorem` | [prod_eq_foldr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-eq-foldr.md) | 51 | `result-track:639478275b0731a5a8631f4c2b7543972c2d90bb72bada214abf8d8133b3b098` |
| 3 | `theorem` | [prod_eq_foldl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-eq-foldl.md) | 56 | `result-track:c24b8c3a03fed2cd6e1b85ab57010d960580844b71b7666a3f38261c97566e7b` |
| 4 | `theorem` | [prod_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-coe.md) | 61 | `result-track:262a6afcfe869086b761a35bd5ef56b548bd339a30286ddc42bf257a6d4cef34` |
| 5 | `theorem` | [prod_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-tolist.md) | 64 | `result-track:5d877b3cc86f55dcd1db6dceabc3ab67a081bcc321398356618b27280bf1659f` |
| 6 | `theorem` | [prod_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-zero.md) | 69 | `result-track:4229c8782c0417dc0ed7937a97e1b75dd749c82d12c4f1e07212b354299c326d` |
| 7 | `theorem` | [prod_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-cons.md) | 73 | `result-track:8744cbe08b9748a723bc669dd96280d4ecb97d42ac35809d0643ce888fb72cef` |
| 8 | `theorem` | [prod_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-singleton.md) | 77 | `result-track:f3d47539ade25524c4cae23e3c226000047a6f781b8b5fc8dd00be7809ace6b7` |
| 9 | `theorem` | [prod_pair](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-pair.md) | 81 | `result-track:bd1587bcbb39bb9e618851f2fa76c6b57d842fb702b58b1ce953c474a933a0af` |
| 10 | `theorem` | [prod_replicate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-replicate.md) | 85 | `result-track:593d0dbbc3fdd621ed9a535ad39773a2c2175a7835fe0281e156fadec2465b93` |
| 11 | `theorem` | [pow_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/pow-count.md) | 89 | `result-track:7c00c0f0d7ebc06f10aa4a5fcb3e42b8cbb330f7e7f8de6346bdd2dda7edf4ec` |
| 12 | `theorem` | [prod_hom_rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-hom-rel.md) | 93 | `result-track:c3ea584670ff6e248865371981fb8424a3f4098bc590711f8fbfbc2f3de79543` |
| 13 | `theorem` | [prod_map_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-map-one.md) | 100 | `result-track:d89ba755b516b4f39af3f2bb867b1113ec0f614dd0e868540b503d27f23536d2` |
| 14 | `theorem` | [prod_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-induction.md) | 104 | `result-track:2ba58081f815f560ee2b6c9904ca37caaa583f973208ab4d4dd85e55caa5d9d2` |
| 15 | `theorem` | [prod_induction_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupMultisetDefsNamespaced.lean/declarations/prod-induction-nonempty.md) | 110 | `result-track:cf70f6fa777f48aea884430b1784c3362fbb2c1481c64885eb15c42d688d6d55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=610f28c3a2eda135db18af72872d6b32dfb4ea06ee55421b3a095e862e26ce4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant2f9567cfce78125c2d5ca86be8fd83e2d557cd80e284325feab773b64adcd84c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variant2f9567cfce78125c2d5ca86be8fd83e2d557cd80e284325feab773b64adcd84c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Nonclaim Catalog — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d942a10f1fc9e18aa4789526da54d70e56daa97d` · SHA-256 `db45487c826adf1a388c39144610d811e258c70c9e7701af901e94b0001f85c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=101111|role=proof_code_atom|slug=pipeline-nonclaimcatalog|owner=canonical_owner|core=Pipeline/NonclaimCatalog.lean|leaf=M506970656c696e652f4e6f6e636c61696d436174616c6f672e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Law

def repository_output_is_not_settlement : String :=
  "repository_output_is_not_settlement"

def rust_file_is_not_proof : String :=
  "rust_file_is_not_proof"

def bitmatrix_is_not_theorem : String :=
  "bitmatrix_is_not_theorem"

def receipt_is_not_proof : String :=
  "receipt_is_not_proof"

def digest_is_not_truth : String :=
  "digest_is_not_truth"

def requiredNonclaims : List String :=
  [ repository_output_is_not_settlement,
    rust_file_is_not_proof,
    bitmatrix_is_not_theorem,
    receipt_is_not_proof,
    digest_is_not_truth ]

theorem requiredNonclaims_count :
    requiredNonclaims.length = 5 := rfl

end Think.Braid.Law
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1ba9c8f917c811069e0daa468f764e35704a9a39b8adc7b54d9033264e1ae03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4e6f6e636c61696d436174616c6f672e6c65616e/Variantdb45487c826adf1a388c39144610d811e258c70c9e7701af901e94b0001f85c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

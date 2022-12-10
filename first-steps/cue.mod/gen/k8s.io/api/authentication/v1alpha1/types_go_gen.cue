// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/api/authentication/v1alpha1

package v1alpha1

import (
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/api/authentication/v1"
)

// SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request.
// When using impersonation, users will receive the user info of the user being impersonated.
#SelfSubjectReview: {
	metav1.#TypeMeta

	// Standard object's metadata.
	// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
	// +optional
	metadata?: metav1.#ObjectMeta @go(ObjectMeta) @protobuf(1,bytes,opt)

	// Status is filled in by the server with the user attributes.
	status?: #SelfSubjectReviewStatus @go(Status) @protobuf(2,bytes,opt)
}

// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
#SelfSubjectReviewStatus: {
	// User attributes of the user making this request.
	// +optional
	userInfo?: v1.#UserInfo @go(UserInfo) @protobuf(1,bytes,opt)
}

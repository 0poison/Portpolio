package kr.co.ezenac.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ContentBean {
	private int contentIdx;

	@NotBlank
	private String contentSubject;

	@NotBlank
	private String contentText;

	private MultipartFile uploadFile;

	private String contentFile;
	private int contentWriterIdx;
	private int contentBoardIdx;
	private String contentDate;
	private String contentWriterName;

}

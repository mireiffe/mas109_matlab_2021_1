---
title: Assignment 5 solution

date: 2021-04-30T00:00:00Z
categories: Week9
tags: assignments
last_modified_at: 2021-04-29

# 목차
toc: true  
toc_sticky: true
toc_label: "Table of Contents" 
---

# 과제 5 해설

과제 | 5
---|---
점수 | 15
파일 | [Download](<https://klms.kaist.ac.kr/mod/assign/view.php?id=531430>)

## 과제 5 연습문제
첨부된 파일들을 다운받으세요. 총 두개의 파일들, `MAS109_assign5.p`와 `cameraman.png`, 이 있습니다. 카메라맨 이미지를 매트랩에 불러오세요. `MAS109_assign5`함수를, 본인의 학번을 입력값으로 실행한 후, 나타나는 정보를 확인하세요. 

1. 본인의 'Submatrix'항목에 나타난 'Rows'와 'Columns'를  참고하여, 카메라맨 이미지에서 해당하는 부분(부분행렬)만 figure 창에 표시하세요. `imshow`명령어 또는 `imagesc`명령어를 사용해야 할 수 있습니다. 생성한 figure 창을 `ex1_<studentID>.fig`로 저장하세요.

2. 본인의 'Delete pixel values'항목에 나타난 두개의 값을 각각 $$v_1$$ 와 $$v_2$$라고 하겠습니다. 카메라맨 이미지의 픽셀 값들 중

    $$
    v_1 \le \text{(pixel value)} \le v_2
    $$
    
    에 해당하는 값들을 모두 0으로 대체하세요. 값을 대체한 카메라맨 이미지를 (새로운)figure 창에 표시한 뒤 `ex2_<studentID>.fig`로 저장하세요.


## 해설
사용자의 학번이 20219999라고 하면,

```matlab
>> MAS109_assign5(20219999);
```

를 입력하여 다음과 같은 결과를 얻을 수 있습니다.

{:refdef: style="text-align: center;"}
![result]({{site.baseurl}}/images/weeks/week6/range.png){: width="300"}
{:refdef}

또한, 카메라맨 이미지를 불러와 `cman`변수에 저장합니다.

```matlab
cman = imread("cameraman.png"); % make sure the png file is in the `current folder`.
```

1. 
    ```matlab
    ex1 = cman(82:242, 63:222);     % extract an appropriate submatrix `ex1`.
    figure;
    imshow(ex1);
    savefig('ex1_20219999.fig');
    ```
    *MATLAB result.*
    {:refdef: style="text-align: center;"}
    ![result]({{site.baseurl}}/images/weeks/week6/ex1.png){: width="300"}
    {:refdef}

2. 앞에서 얻은 $$v_1$$ 와 $$v_2$$ 는 각각 $$116$$, $$179$$ 입니다.

    ```matlab
    % Make the pixel values zero, whose values are in the range we got.
    % There are many ways to achieve the same task, try to find it yourself.
    ex2 = double(cman) .* (1 - (cman > 116) .* (cman < 179));
    figure;
    % show the `ex2` and display pixel in a range [0, 255].
    % If you do not assign the range, then MATLAB displays normalized image, automatically.
    imshow(ex2, [0, 255]);
    savefig('ex2_20219999.fig');
    ```
    *MATLAB result.*
    {:refdef: style="text-align: center;"}
    ![result]({{site.baseurl}}/images/weeks/week6/ex2.png){: width="500"}
    {:refdef}


---

# Assignment 5

Assignment | 5
---|---
Score | 15
Files | [Download](<https://klms.kaist.ac.kr/mod/assign/view.php?id=531430>)

## Exercises, assignment 5
Download the attached files. There are totally two files, `MAS109_assign5.p` and `cameraman.png`. Load the cameraman image to MATLAB. Execute the `MAS109_assign5` function with your student ID number as an input and check the information displayed.

1. Refer to 'Rows' and 'Columns' in your 'Submatrix' section, and display only the corresponding part (submatrix) in the cameraman image in a figure window. You may need to use the `imshow` command or the `imagesc` command. Save the created figure window as `ex1_<studentID>.fig`.\
(If you do not know how to save the figure window, back to the previous documents.)

2. Let the two values ​​displayed in 'Delete pixel values' section be $$v_1$$ and $$v_2$$, respectively. Replace all pixel values ​​in the cameraman image that satisfy 

    $$
    v_1 \le \text{(pixel value)} \le v_2,
    $$
    
    **with 0**. Display the (replaces) cameraman image in the (new) figure window and save it as `ex2_<studentID>.fig`.

## Solutions
Assume that one has an ID number 20219999 then 

```matlab
>> MAS109_assign5(20219999);
```

gives

{:refdef: style="text-align: center;"}
![result]({{site.baseurl}}/images/weeks/week6/range.png){: width="300"}
{:refdef}

Let's load and save the cameraman image to a variable `cman`.

```matlab
cman = imread("cameraman.png"); % make sure the png file is in the `current folder`.
```

1. 
    ```matlab
    ex1 = cman(82:242, 63:222);     % extract an appropriate submatrix `ex1`.
    figure;
    imshow(ex1);
    savefig('ex1_20219999.fig');
    ```
    *MATLAB result.*
    {:refdef: style="text-align: center;"}
    ![result]({{site.baseurl}}/images/weeks/week6/ex1.png){: width="300"}
    {:refdef}

2. $$v_1$$ and $$v_2$$ are $$116$$ and $$179$$, respectively.

    ```matlab
    % Make the pixel values zero, whose values are in the range we got.
    % There are many ways to achieve the same task, try to find it yourself.
    ex2 = double(cman) .* (1 - (cman > 116) .* (cman < 179));
    figure;
    % show the `ex2` and display pixel in a range [0, 255].
    % If you do not assign the range, then MATLAB displays normalized image, automatically.
    imshow(ex2, [0, 255]);
    savefig('ex2_20219999.fig');
    ```
    *MATLAB result.*
    {:refdef: style="text-align: center;"}
    ![result]({{site.baseurl}}/images/weeks/week6/ex2.png){: width="500"}
    {:refdef}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: larlena <larlena@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/07 20:57:51 by larlena           #+#    #+#             */
/*   Updated: 2020/11/09 16:49:21 by larlena          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	len;
	size_t	start;
	size_t	i;

	i = 0;
	start = ft_strlen(dst);
	len = ft_strlen(src) + start;
	if (start > dstsize)
		return (ft_strlen(src) + dstsize);
	while (start + i < dstsize - 1 && src[i])
	{
		dst[start + i] = src[i];
		i++;
	}
	dst[start + i] = '\0';
	return (len);
}
